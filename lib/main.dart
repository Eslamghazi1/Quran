import 'package:app/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
int marked=610;
String modeon="light";
String listedname='الفاتحة';
String partedname='الاول';
int page_id=1;
late SharedPreferences prefs;
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
   prefs= await SharedPreferences.getInstance();
  var mode= prefs.getString("mode");
  var mark= prefs.getInt("mark");
  var page=prefs.getInt("lastpage");
  var listname=prefs.getString("list");
  var partname=prefs.getString("part");
  if(mode!=null || mark!=null||page!=null || listname!=null||partname!=null)
  {

    marked=mark!=null?mark:610;
    modeon= mode!=null?mode:"light";
    page_id=page!=null?page:1;
    listedname=listname!=null?listname:"الفاتحة";
    partedname=partname!=null?partname:"الاول";
  }
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
      runApp(
        const ProviderScope(child: MyApp()),
      );
    });

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'القران الكريم',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
        iconTheme: IconThemeData(color: Colors.white)
      ),
      home:

      pages_view(lastpage:page_id ,mark: marked,mode: modeon,List: listedname, part: partedname,),

    );
  }
}

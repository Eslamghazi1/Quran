import 'package:app/List.dart';
import 'package:app/finalist.dart';
import 'package:app/main.dart';
import 'package:app/pages_list.dart';
import 'package:app/part_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data.dart';
import 'size_config.dart';
class pages_view extends ConsumerStatefulWidget {
   pages_view({super.key,required this.lastpage,required this.mark,required this.mode,required this.List,required this.part});
  String mode;
  int mark;
  String List;
  String part;
  int lastpage;
  @override
  ConsumerState<pages_view> createState() => _PagesState();
}

class _PagesState extends ConsumerState<pages_view> {

  int show=0;
   int pagenumber=1;
  List pages=[
    "1","2","3","4","5","6","7","8","9","10",
    "11","12","13","14","15","16","17","18","19","20",
    "21","22","23","24","25","26","27","28","29","30",
    "31","32","33","34","35","36","37","38","39","40",
    "41","42","43","44","45","46","47","48","49","50",
    "51","52","53","54","55","56","57","58","59","60"
    ,"61","62","63","64","65","66","67","68","69","70"
    ,"71","72","73","74","75","76","77","78","79","80",
     "81","82","83","84","85","86","87","88","89","90"
    ,"91","92","93","94","95","96","97","98","99","100",
    "101","102","103","104","105","106","107","108","109","110",
    "111","112","113","114","115","116","117","118","119","120",
    "121","122","123","124","125","126","127","128","129","130",
    "131","132","133","134","135","136","137","138","139","140",
    "141","142","143","144","145","146","147","148","149","150",
    "151","152","153","154","155","156","157","158","159","160",
    "161","162","163","164","165","166","167","168","169","170",
    "171","172","173","174","175","176","177","178","179","180",
    "181","182","183","184","185","186","187","188","189","190",
    "191","192","193","194","195","196","197","198","199","200",
    "201","202","203","204","205","206","207","208","209","210",
    "211","212","213","214","215","216","217", "218","219","220",
    "221","222","223","224","225","226","227","228","229","230",
    "231","232","233","234","235","236","237","238","239","240",
    "241","242","243","244","245","246","247","248","249","250",
    "251","252","253","254","255","256","257","258","259","260",
    "261","262","263","264","265","266","267","268","269","270",
    "271","272","273","274","275","276","277","278","279","280",
    "281","282","283","284","285","286","287","288","289","290",
    "291","292","293","294","295","296","297","298","299","300",
    "301","302","303","304","305","306","307","308","309","310",
    "311","312","313","314","315","316","317","318","319","320",
    "321","322","323","324","325","326","327","328","329","330",
    "331","332","333","334","335","336","337","338","339","340",
    "341","342","343","344","345","346","347","348","349","350",
    "351","352","353","354","355","356","357","358","359","360",
    "361","362","363","364","365","366","367","368","369","370",
    "371","372","373","374","375","376","377","378","379","380"
    ,"381","382","383","384","385","386","387","388","389","390",
    "391","392","393","394","395","396","397","398","399","400"
    ,"401","402","403","404","405","406","407","408","409","410",
    "411","412","413","414","415","416","417","418","419","420",
    "421","422","423","424","425","426","427","428","429","430",
    "431","432","433","434","435","436","437","438","439","440",
    "441","442","443","444","445","446","447","448","449","450",
    "451","452","453","454","455","456","457","458","459","460",
    "461","462","463","464","465","466","467","468","469","470",
    "471","472","473","474","475","476","477","478","479","480",
    "481","482","483","484","485","486","487","488","489","490",
    "491","492","493","494","495","496","497","498","499","500",
    "501","502","503","504","505","506","507","508","509","510",
    "511","512","513","514","515","516","517","518","519","520",
    "521","522","523","524","525","526","527","528","529","530",
    "531","532","533","534","535","536","537","538","539","540",
    "541","542","543","544","545","546","547","548","549","550",
    "551","552","553","554","555","556","557","558","559","560",
    "561","562","563","564","565","566","567","568","569","570",
    "571","572","573","574","575","576","577","578","579","580",
    "581","582","583","584","585","586","587","588","589","590",
    "591","592","593","594","595","596","597","598","599","600",
    "601","602","603","604"

  ];
  @override
  @override
  Widget build(BuildContext context) {
  PageController pageController=PageController(initialPage: widget.lastpage-1);
    SizeConfig().init(context);

return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller:pageController ,
            scrollDirection:SizeConfig.orientation == Orientation.landscape?Axis.vertical :Axis.horizontal,
                onPageChanged: (int value){
                  var partinstance= Parts.where((element)=>(element.start<=value+1&&element.end>=value+1)).toList();
                  var swarinstance= Listed.where((element)=>element.page==value+1).toList();
                setState(() {
                partinstance.isNotEmpty?  widget.part=partinstance[0].name:null;
                swarinstance.isNotEmpty?widget.List=swarinstance[0].name:null;
                widget.lastpage=value+1;
              });
                  prefs.setString("part", widget.part);
                  prefs.setString("list", widget.List);
                  prefs.setInt("lastpage", widget.lastpage);
            },
                children:[
                  ...pages.map((element)=> Stack(fit:StackFit.expand,
                    children: [
                      InkWell(
                        splashColor: null,
                        onTap: (){
                          setState(() {
                            show=show==0?1:0;
                          });
                        },
                        child: Container(
                                color: widget.mode=="dark"?Colors.black:Colors.white,
                          padding: EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(fit: BoxFit.fill,
                                    image: AssetImage("${widget.mode}/$element.png")),

                            ),
                            // child: Icon(Icons.add,color: Colors.red,size: 50,),
                          ),
                        ),),
                    widget.mark==(pages.indexOf(element)+1)?  Positioned(
                        left: 20,
                          child:
                          // widget.mark==
                              Icon(Icons.bookmark_outlined,size:70,
                              color:widget.mode=="dark"?Colors.blue.withOpacity(0.4):Colors.green.withOpacity(0.4),
                                  opticalSize:1.5
                              )
                    ):Container(),
                    ],
                  )
                  ),
            ]
            ),

            // prefs.getInt("mark")=
            show==1?Positioned(top:0,child:
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              height: MediaQuery.of(context).size.height/18,
              color: Colors.black.withOpacity(0.7),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topCenter,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text("الجزء ${widget.part} ",style: TextStyle(color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height/50),),
                ),

                Text(widget.lastpage.toString(),style: TextStyle(color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height/50),),

                Expanded(
                  child: Text(" سورة ${widget.List}",style: TextStyle(color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height/50),textAlign: TextAlign.end,),
                ),
              ],),)):Container(),
            show==1?Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height/4,
                color: Colors.black.withOpacity(0.7),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.bottomCenter,
                child:  Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                              height: MediaQuery.of(context).size.height/12,
                              decoration:const BoxDecoration(
                    border: Border(
                                  top: BorderSide(color: Colors.white, width: 1.5),
                                  left: BorderSide(color: Colors.white, width: 1.5),
                                  right: BorderSide(color: Colors.white, width: 1.5),
                                  bottom:  BorderSide(color: Colors.white, width: 1.5),
                                ),
                              ),
                              child: IconButton(onPressed: ()async{
                                SharedPreferences prefs= await SharedPreferences.getInstance();
                                // widget.mode=widget.mode=="dark"?"light":"dark";
                                setState(() {
                                  widget.mode= widget.mode=="dark"?"light":"dark";
                                });
                                prefs.setString("mode", widget.mode);
                              }, icon: Icon(size:MediaQuery.of(context).size.height/34 ,
                               // Get.isDarkMode
                                widget.mode=="dark"
                                    ? Icons.nightlight_round_outlined
                                    : Icons.wb_sunny_outlined
                                ,))),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                              height: MediaQuery.of(context).size.height/12,
                              decoration:const BoxDecoration(
                                border: Border(
                                  top: BorderSide(color: Colors.white, width:1.5),
                                  bottom:  BorderSide(color: Colors.white, width: 1.5),
                                ),
                              ),
                              child: InkWell(
                                onTap: (){
                                  prefs.setInt("mark",widget.lastpage);
                                  setState(() {
                                    widget.mark=widget.lastpage;
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.bookmark,
                                      size:MediaQuery.of(context).size.height/40,),
                                    Text("اضافة علامة",style: TextStyle(color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.height/50),)

                                  ],
                                ),
                              )),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                              height: MediaQuery.of(context).size.height/12,
                              decoration:const BoxDecoration(
                                border: Border(
                                  top: BorderSide(color: Colors.white, width:1.5),
                                  left: BorderSide(color: Colors.white, width: 1.5),
                                  right: BorderSide(color: Colors.white, width: 1.5),
                                  bottom:  BorderSide(color: Colors.white, width: 1.5),
                                ),
                              ),
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>pages_view(lastpage: widget.mark, mark: widget.mark, mode: widget.mode,
                                      List: widget.List, part: widget.part)));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Icon(Icons.bookmark,
                                      size:MediaQuery.of(context).size.height/40,),
                                    Text("انتقل الي العلامة",style: TextStyle(color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.height/50),),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              height: MediaQuery.of(context).size.height/12,
                              decoration:const BoxDecoration(
                                border: Border(
                                  left: BorderSide(color: Colors.white, width: 1.5),
                                  right: BorderSide(color: Colors.white, width: 1.5),
                                  bottom:  BorderSide(color: Colors.white, width: 1.5),
                                ),
                              ),
                              child: InkWell(
                                onTap: (){
                                  Get.to(()=>(Pages_listview(mode: widget.mode,mark:widget.mark ,)));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text("الصفحات",style: TextStyle(color: Colors.white,
                                    fontSize: MediaQuery.of(context).size.height/50),),
                                    Icon(Icons.auto_stories,
                                      size:MediaQuery.of(context).size.height/40,),
                                  ],
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              height: MediaQuery.of(context).size.height/12,
                              decoration:const BoxDecoration(
                                border: Border(
                                  // left: BorderSide(color: Colors.white, width:),
                                  // right: BorderSide(color: Colors.white, width: 2.0),
                                  bottom:  BorderSide(color: Colors.white, width: 1.5),
                                ),
                              ),
                              child: InkWell(
                                onTap: (){
                                  Get.to(()=>Part_list(mark: widget.mark, mode: widget.mode));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("الاجزاء",style: TextStyle(color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.height/50),),
                                    Icon(Icons.incomplete_circle_outlined,
                                      size:MediaQuery.of(context).size.height/40,),
                                  ],
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              height: MediaQuery.of(context).size.height/12,
                              decoration:const BoxDecoration(
                                border: Border(
                                  left: BorderSide(color: Colors.white, width: 1.5),
                                  right: BorderSide(color: Colors.white, width: 1.5),
                                  bottom:  BorderSide(color: Colors.white, width: 1.5),
                                ),
                              ),
                              child: InkWell(
                                onTap: (){
                                  Get.to(()=>List_Swar(mark: widget.mark, mode: widget.mode));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text("الفهرس",style: TextStyle(color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.height/50),),
                                    Icon(Icons.filter_list,
                                      size:MediaQuery.of(context).size.height/40,),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              height: MediaQuery.of(context).size.height/12,
                              decoration:const BoxDecoration(
                                border: Border(
                                  left: BorderSide(color: Colors.white, width: 1.5),
                                  right: BorderSide(color: Colors.white, width: 1.5),
                                  bottom:  BorderSide(color: Colors.white, width: 1.5),
                                ),
                              ),
                              child: InkWell(
                                onTap: (){
                                  Get.to(()=>Finalist(color: widget.mode,));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("دعاء الختم",style: TextStyle(color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.height/40),),
                                        SvgPicture.asset(
                                          color: Colors.white,
                                        "svg/hands.svg",
                                        fit: BoxFit.fill,
                                        height: MediaQuery.of(context).size.height/25,
                                        alignment: Alignment.center,
                                        // color: Get.isDarkMode ? Colors.teal : Colors.blueGrey,
                                        ),

                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],),
              ),
            ):Container(),
          ],
        ),
      )
    );
  }
}

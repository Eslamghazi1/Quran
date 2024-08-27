import 'package:app/pages.dart';
import 'package:app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'data.dart';

String getpart(int id){
  if(id>302){
    if(id>=302&& id <=321){

      return "السادس عشر";
    }
    else if(id>=322&& id <=341){

      return "السابع عشر";
    }
    else if(id>=342&& id <=361){

      return "الثامن عشر";
    }
    else if(id>=362&& id <=381){

      return "التاسع عشر";
    }
    else if(id>=382&& id <=401){

      return "العشرين";
    }
    else if(id>=402&& id <=421){

      return "الحادي والعشرين";
    }
    else if(id>=422&& id <=441){

      return "الثاني والعشرين";
    }
    else if(id>=442&& id <=461){

      return "الثالث والعشرين";
    }
    else if(id>=462&& id <=481){

      return "الرابع والعشرين";
    }
    else if(id>=482&& id <=501){

      return "الخامس والعشرين";
    }
    else if(id>=502&& id <=521){

      return "السادس والعشرين";
    }
    else if(id>=522&& id <=541){

      return "السابع والعشرين";
    }
    else if(id>=542&& id <=561){

      return "الثامن والعشرين";
    }
    else if(id>=562&& id <=581){

      return "التاسع والعشرين";
    }

    else if(id>=582){

      return "الثلاثون";
    }

  }else
  {
    if(id>=1&& id <=21){

      return "الاول";
    }
    else if(id>=22&& id <=41){

      return "الثاني";
    }
    else if(id>=42&& id <=61){

      return "الثالث";
    }
    else if(id>=62&& id <=81){

      return "الرابع";
    }
    else if(id>=22&& id <=101){

      return "الخامس";
    }
    else if(id>=102&& id <=121){

      return "السادس";
    }
    else if(id>=122&& id <=141){

      return "السابع";
    }
    else if(id>=142&& id <=161){

      return "الثامن";
    }
    else if(id>=162&& id <=181){

      return "التاسع";
    }
    else if(id>=182&& id <=201){

      return "العاشر";
    }
    else if(id>=202&& id <=221){

      return "الحادي عشر";
    }
    else if(id>=222&& id <=241){

      return "الثاني عشر";
    }
    else if(id>=242&& id <=261){

      return "الثالث عشر";
    }
    else if(id>=262&& id <=281){

      return "الرابع عشر";
    }
    else{
      return "الخامس عشر";
    }

  }
  return "can't find it";
}

class List_Swar extends StatelessWidget {
   List_Swar({super.key, required this.mark, required this.mode});
  final int mark;
   String mode;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var swarinstance= Listed.where((element) {
      if(Listed.indexOf(element)<=112){
      return  (mark >= element.page && mark <= Listed[Listed.indexOf(element)+1].page);
      }
      return false;
    }).toList();
    if(swarinstance.isNotEmpty&&swarinstance.length>1){
    swarinstance.removeAt(0);
    }
    swarinstance=swarinstance.isEmpty?fake:swarinstance;
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        itemBuilder: (context, index) {

          return Column(
            children: [
              InkWell(
                splashColor: null,
                onTap: (){
                 var instance= Parts.where((element)=>(element.start<=Listed[index].page&&element.end>=Listed[index].page)).toList();
                 Get.offAll(()=>
                     pages_view(
                         lastpage:Listed[index].page ,
                         mark: mark,
                         mode: mode,
                         List: Listed[index].name,
                         part: instance[0].name,));
                },
                  child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1.5),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height:
                      SizeConfig.orientation == Orientation.landscape? MediaQuery.of(context).size.width / 15:MediaQuery.of(context).size.height / 15,
                      child: Row(children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: mode == "dark" ? Colors.grey[700] : Colors.black,
                            alignment: Alignment.center,
                            child: Text(
                              Listed[index].page.toString(),style: TextStyle(
                            color: mode=="dark"?Colors.black:Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 5,
                            child: Container(
                              color:
                                  mode == "dark" ?  Colors.black:Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                const  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width:MediaQuery.of(context).size.height / 15,
                                    child: Text(
                                      Listed[index].type == 0 ? "مكة" : "المدينة",textAlign: TextAlign.center,style: TextStyle(
                                        color: mode=="dark"?Colors.white:Colors.black),
                                    ),
                                  ),
                                  const  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "اياتها",style: TextStyle(
                                          color: mode=="dark"?Colors.white:Colors.black),
                                      ),
                                      Text(Listed[index].lenght.toString(),
                                        style: TextStyle(
                                          color: mode=="dark"?Colors.white:Colors.black),)
                                    ],
                                  ),
                                  const Spacer(),
                                  swarinstance[0]==Listed[index]?
                                  Icon(Icons.bookmark_outlined,size: MediaQuery.of(context).size.height / 23,
                                      color:mode=="dark"?Colors.blue.withOpacity(0.7):Colors.green.withOpacity(0.7),
                                  ):Container(),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SvgPicture.asset(
                                    color: mode == "dark"
                                        ? Colors.white
                                        : Colors.black,
                                    "svg/${Listed[index].name}.svg",
                                    fit: BoxFit.fill,
                                    height:MediaQuery.of(context).size.height / 25,
                                    alignment: Alignment.center,
                                  ),
                                 const SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: mode == "dark" ? Colors.grey[700] : Colors.black,
                            alignment: Alignment.center,
                            child: Text(Listed[index].num.toString(),
                              style: TextStyle(
                              color: mode=="dark"?Colors.black:Colors.white),),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              )),
            ],
          );
        },
        itemCount: Listed.length,
      )),
    );
  }
}

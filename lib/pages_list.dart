import 'package:app/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'data.dart';
import 'size_config.dart';

class Pages_listview extends StatelessWidget {
  const Pages_listview({super.key,required this.mode,required this.mark});
final mode;
final mark;
  @override
  Widget build(BuildContext context) {
    List<page>pagelist=[];
    SizeConfig().init(context);
    int id=0;
    String name="";
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(itemBuilder: (context,index){
          if(id<114){
            if(index+1==Listed[id].page){
                      name=Listed[id].name;
                      id++;
                      if(Listed[id].page==Listed[id-1].page&&Listed[id+1].page==Listed[id-1].page){
                        id+=2;
                      }else if(Listed[id].page==Listed[id-1].page) {
                        id++;
                      }
                    }
          }
          pagelist.add(page(name: name, pages: index, id:id ));

          return InkWell(
            splashColor: null,
            onTap: (){
              var instance= Parts.where((element)=>(element.start<=index+1&&element.end>=index+1)).toList();
              Get.offAll(()=>pages_view(lastpage: index+1,mark: mark, mode: mode, List: pagelist[index].name, part: instance[0].name));
            },
            child: Container(
              height:  MediaQuery.of(context).size.height / 15,

              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey, width: 1.5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex:1,
                      child: Container(
                        alignment: Alignment.center,
                        height:  MediaQuery.of(context).size.height / 15,

                        color: mode == "dark" ? Colors.grey[700] : Colors.black,
                        child: Text("${index+1}",style: TextStyle(
                            color: mode=="dark"?Colors.black:Colors.white)
                        ),)),
                  Expanded(
                      flex: 5,
                      child: Container(
                            padding: EdgeInsets.only(right: 10),
                            alignment: Alignment.centerRight,
                            color: mode == "dark" ?  Colors.black:Colors.white,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  mark==(index+1)?
                                  Icon(Icons.bookmark_outlined,size: MediaQuery.of(context).size.height / 22,
                                      color:mode=="dark"?Colors.blue.withOpacity(0.7):Colors.green.withOpacity(0.7),
                                      opticalSize:1.5
                                  ):Container(),
                                  SizedBox(width: mark==(index+1)?MediaQuery.of(context).size.width / 3:0,),
                                  SvgPicture.asset(
                                    color: mode == "dark"
                                        ? Colors.white
                                        : Colors.black,
                                    "svg/${pagelist[index].name}.svg",
                                    fit: BoxFit.fill,
                                    height:MediaQuery.of(context).size.height / 25,
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),

                            ),),
                        ),
                  Expanded(
                      flex: 1,
                      child:
                      Container(
                        alignment: Alignment.center,
                        height:  MediaQuery.of(context).size.height / 15,
                        color: mode == "dark" ? Colors.grey[700] : Colors.black,
                        child: Text("${pagelist[index].id}",
                          style: TextStyle(
                              color: mode=="dark"?Colors.black:Colors.white),),)),
                ],),),);
        },itemCount: 604,),
      ),
    );
  }
}
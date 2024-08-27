import 'package:app/data.dart';
import 'package:app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages.dart';

class Part_list extends StatelessWidget {
  const Part_list({super.key, required this.mark, required this.mode});
  final int mark;
  final String mode;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            splashColor: null,
            onTap: () {
              Get.offAll(() => pages_view(
                  lastpage: Parts[index].start,
                  mark: mark,
                  mode: mode,
                  List: Parts[index].swar,
                  part: Parts[index].name));
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 15,
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
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height / 15,
                        color: mode == "dark" ? Colors.grey[700] : Colors.black,
                        child: Text(Parts[index].start.toString(),
                            style: TextStyle(
                                color: mode == "dark"
                                    ? Colors.black
                                    : Colors.white)),
                      )),
                  Expanded(
                      flex: 5,
                      child: Container(
                        alignment: Alignment.center,
                        color: mode == "dark" ? Colors.black : Colors.white,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ((mark >= Parts[index].start) &&
                                      (mark <= Parts[index].end))
                                  ? Icon(Icons.bookmark_outlined,
                                      size: MediaQuery.of(context).size.height / 25,
                                      color: mode == "dark"
                                          ? Colors.blue.withOpacity(0.7)
                                          : Colors.green.withOpacity(0.7),
                                      opticalSize: 1.5)
                                  : Container(),
                              Text(
                                "الجزء${Parts[index].name}",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height / 30,
                                    color: mode == "dark"
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height / 15,
                        color: mode == "dark" ? Colors.grey[700] : Colors.black,
                        child: Text(
                          Parts[index].index.toString(),
                          style: TextStyle(
                              color:
                                  mode == "dark" ? Colors.black : Colors.white),
                        ),
                      ))
                ],
              ),
            ),
          );
        },
        itemCount: Parts.length,
      ),
    ));
  }
}

import 'package:app/data.dart';
import 'package:flutter/material.dart';

class Finalist extends StatelessWidget {
  const Finalist({super.key, required this.color});
  final String color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "دُعَاءُ خَتْمِ القُرْآنِ الكَريمِ",
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: color == "dark" ? Colors.black38 : Colors.white,
      body: SafeArea(
        child: Container(decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,
            image:AssetImage("images/png.png") )),
        child: Padding(
          padding:  EdgeInsets.all(MediaQuery.of(context).size.width/8),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                thefinal,
                style: TextStyle(
                    fontSize: 24,
                    color: color == "dark" ? Colors.white : Colors.black),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        )
      ),
    );
  }
}


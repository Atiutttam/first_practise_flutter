
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FlutterBasics extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My flutter Basics"),
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.blueAccent),
      ),
      body: Column(
        children: [
          Container(
            width: 300, height: 100,
            ///Basics of Color, Text, Text decoration,font Family
            color: Color(0xffccffff),
            child: Text("Hello World",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Color(0xff009999),  ///color
                ///fontFamily: "fontSec"
                 fontFamily: "fontMain"  ////font Family
             ),),
          ),
          Text("Hello World",style: TextStyle(
            fontSize: 25, fontStyle: FontStyle.italic   ///fontstyle
          ),),
          ///Use of Text Span
          Text.rich(TextSpan(text: "Hi", style: TextStyle(fontSize: 15 ),
          children: [
            TextSpan(text: "Hiyan", style: TextStyle(fontSize: 40)),
            TextSpan(text: "Kumawat", style: TextStyle(fontSize: 20))
          ])),
        ],
      ),
    );
  }
}

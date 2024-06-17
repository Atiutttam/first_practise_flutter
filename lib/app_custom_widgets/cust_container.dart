

import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget{
  VoidCallback onTap;
  double  mWidth;
  double  mHeight;
  Color ? mColor;
  Color bColor;


  MyCustomContainer({required this.onTap,
    this.mWidth=150,
    this.mHeight=75,
    this.mColor,
    this.bColor=Colors.black54,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print("I am container");},
      child: Container(
        width: mWidth, height: this.mHeight,
        decoration: BoxDecoration(
          color: mColor,
          border: Border.all(width: 1,color: bColor,),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(blurRadius:10, color: bColor, spreadRadius:2)
          ]

        ),
        child: Row(
          children: [
            Image.asset("assets/images/login.jpg"),
            Text("login Page"),
            Icon(Icons.navigate_next),
              ////size:(),),
          ],
        ),
      ),
    );
  }

}
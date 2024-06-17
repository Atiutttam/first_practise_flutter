

import 'package:flutter/material.dart';

class AppCustomEleButton extends StatelessWidget{

  ///void Function() onTap; OR
  VoidCallback onTap;
  String mTitle;
  IconData? mIcon;
  Color mBgColor ;
  Color mFgColor;
  Size ? mSize;
  double mBorderRadius;

  AppCustomEleButton({
    required this.onTap,
    required this.mTitle,
    this.mIcon,
    this.mBgColor=Colors.blue,
    this.mFgColor=Colors.white,
    this.mSize,
    this.mBorderRadius=11.0});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap,
      child: mIcon!=null? Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.play_arrow_outlined),
          SizedBox(width: 8,),
          Text(mTitle, style: TextStyle(fontSize: 17),),
        ],
      ) : Text(mTitle),
      style: ElevatedButton.styleFrom(
          minimumSize: mSize ?? Size(200, 35) ,
          maximumSize: mSize ?? Size(200, 35) ,
          backgroundColor: mBgColor,
          foregroundColor: mFgColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(mBorderRadius),
          )
      ),
    );
  }
}
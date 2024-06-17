

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonBasic extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Basics"),
      ),
      body: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(200, 40),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 10,
        ),
        onPressed: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.play_arrow),
            SizedBox(width: 12,),
            Text("Play",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18,fontFamily: "fontSec"),),
          ],
        ),
      ),
    );
  }
}

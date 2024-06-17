

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BgContainer extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basics"),
      ),
      body:  Row(
                children: [
                Expanded(child: SizedBox(width: 1,)),

                Container(
                  margin: EdgeInsets.all(11),
                  width: 60,height: 60,color: Colors.amber,
                  child: Text("Ashok"),

                ),
                Container(
                  margin: EdgeInsets.all(11),
                  width: 60,height: 60,color: Colors.blueAccent,
                ),
                Container(
                  margin: EdgeInsets.all(11),
                  width: 60,height: 60,color: Colors.cyan,
                ),
                Expanded(child: SizedBox(width: 1,)),
              ],
            ),
    );
  }
}

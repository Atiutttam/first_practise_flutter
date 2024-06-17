

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicsGrid extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Basics of Grid"),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
                crossAxisCount: 4,
            children: [
              Container(color: Colors.amber,),
              Container(color: Colors.blue,),
              Container(color: Colors.black54,),
              Container(color: Colors.cyan,),
              Container(color: Colors.deepOrange,),
              Container(color: Colors.green,),
              Container(color: Colors.indigoAccent,),
            ],),
          ),
          Expanded(
            child: GridView.extent(
                maxCrossAxisExtent: 225,
            children: [Container(color: Colors.amber,),
              Container(color: Colors.blue,),
              Container(color: Colors.black54,),
              Container(color: Colors.cyan,),
              Container(color: Colors.deepOrange,),
              Container(color: Colors.green,),
              Container(color: Colors.indigoAccent,),],),
          )
        ],
      ),

    );
  }
}

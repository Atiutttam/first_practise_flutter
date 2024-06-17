


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_custom_widgets/container_decoration.dart';

class ListViewBasics extends StatelessWidget{
  List<String> listNames=[
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basics of List View"),
      ),
      body: ListView.builder(
          // scrollDirection: Axis.horizontal,
          itemCount: listNames.length,
          itemBuilder: (context, index){
            if(index!=4){
              return Container(
                child: Center(child: Text(listNames[index])),
                height: 50,width: 50,
                margin: EdgeInsets.all(10),

                color: index==2 ? Colors.blue: Colors.cyan,);
            }
            else {
              return Text("I am not list ");
            }


          }),

    );
  }

}


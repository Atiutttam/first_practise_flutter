


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicsGridViewBuilder extends StatelessWidget {

  List<Map<String, dynamic>> listGrid =[
  {
    "title": "Life is full of challenges. You have to face it. Never ever give up hhjfbmhfbhkfgbbvhfbkhfbfhabakhdbfahbahbfamhfhabhkbhfkygfhahgfka end",
    "color": Colors.blueAccent
  },
    {
      "title": "Job",
      "color": Colors.red
    },
    {
      "title": "Personal",
      "color": Colors.orangeAccent
    },
    {
      "title": "Struggle",
      "color": Colors.green
    },

  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Basics of grid view builder"),
     ),
     body: GridView.builder(
       itemCount: listGrid.length,
       // itemCount: 13,
         gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
           maxCrossAxisExtent: 200,
           mainAxisSpacing: 5,
           crossAxisSpacing: 10,
           childAspectRatio: 4/5
         ),
         /// SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
         itemBuilder: (context, index){
           return Container(
             // margin: EdgeInsets.all(5),
             // color: Colors.blueAccent,
             color: listGrid[index]["color"],
             child: SingleChildScrollView(
               child: Text(listGrid[index]["title"],style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,),
                 overflow: TextOverflow.visible,
               textAlign: TextAlign.start,
                 ),
             ),
           );
         }),
   );
  }
}

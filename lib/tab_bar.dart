

import 'package:flutter/material.dart';

class TabBarBasics extends StatelessWidget{

  List <String> myFlatNo=[
    "301 Neelkanth",
    "302 Neelkanth",
    "303 Neelkanth",
    "304 Neelkanth",
    "305 Neelkanth",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text(" Basics of Tab Bar"),
          bottom: TabBar(
            indicatorColor: Colors.orangeAccent,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,

              tabs:[
                Tab(child: Text("A 3001 Neelkanth Pride CHS Ltd"),),
                Tab(child: Text("302 Neelkanth Pride CHS Ltd"),),
                // Tab(child: Text("303"),),
                // Tab(child: Text("304"),),
                // Tab(child: Text("301 Neelkanth Pride"),),
                // Tab(child: Text("302 Neelkanth"),),
                // Tab(child: Text("303"),),
                // Tab(child: Text("304"),)

              ]
          ),

        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
          child: Text("301"),
        ),
      ),
    );
  }
}

///doubt: how to make Tab Bar scrollable with list dynamic data
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold (
      appBar: AppBar(
        title:Text("Hi, Hiyan Kumawat"),
        ),
        backgroundColor: Colors.white,
      body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height:100,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height:100,
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: Container(
                height:200,
                color: Colors.yellowAccent,
              ),
            ),
          ],
        ),
    );
  }

}
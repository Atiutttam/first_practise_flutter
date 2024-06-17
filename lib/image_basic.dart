

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageBasic extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Basics"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network("https://upload.wikimedia.org/wikipedia/commons/d/df/Ayodhya_Ram_Mandir_Inauguration_Day_Picture.jpg", width: 300,height: 300,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.asset("assets/images/flutter.png", width: 100,height: 100,),
              ),
            ),
            GestureDetector(
              onTap: (){
                print("gesture detected..");
              },
              child: ClipOval(
                child: Image.asset("assets/images/folder.png", width: 300,height: 300,),
              ),
            ),
            InkWell(
              onTap: (){
                print("tapped");
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/healthcare.png")
                    )
                  ),
                ),
              ),
            ),
            Container(
              width: 300, height: 200,
              child: Image.asset("assets/images/obesity.png", fit: BoxFit.fill,),
            )
            
          ],
        ),
      )
    );
  }
  
}
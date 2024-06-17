

import 'package:first_practise/app_custom_widgets/cust_container.dart';
import 'package:flutter/material.dart';

import 'app_custom_widgets/cust_elevbtn.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title:Text("Hi, Custom Widgets"),
       titleTextStyle: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),

     ),
     body: SizedBox(
       width: double.infinity,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           AppCustomEleButton(
             onTap: (){print("Playing.....");},
             mTitle: "Play",mIcon: Icons.play_arrow,mSize: Size(200,50),),
           AppCustomEleButton(
             onTap: (){print("Logged in....");},
             mTitle: "Login",mBgColor: Colors.orangeAccent,),
           AppCustomEleButton(
             onTap: (){print(" Logged out ");},
             mTitle: "Logout",mSize: Size(100,30),mBorderRadius: 10.0,),
           MyCustomContainer(onTap: (){
             print(" I am custom Container");
           },
             mColor: Colors.white,
             mWidth: 400,
             bColor: Colors.grey.shade300,
           ),

         ],
       ),
     ),
   );
  }

}
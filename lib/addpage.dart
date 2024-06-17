

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return AddPageState ();
  }
}

class AddPageState extends State <AddPage> {
  var no1Controller=TextEditingController();
  var no2Controller=TextEditingController();
  String result=" ";
  int calculationChoice=0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title:Row(
         children: [
           Container(
             height: 50,
               width: 50,
               child: Image.asset("assets/images/user.png")),
           SizedBox(
             width: 20),
           Text("Hi, Hiyan Kumawat", style: TextStyle(color:Colors.blue.shade900),),],
       ),
       backgroundColor: Colors.blue.shade50,
     ),
     body: Center(
       child: Container(
         width: 350,
         child: Column(
           children: [
             SizedBox(height: 15),
             TextField(
               keyboardType: TextInputType.number,
               controller: no1Controller,
               decoration: InputDecoration(
                 label: Text("First Number",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                 hintText: "Enter first number...",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10)
                 )
               ),
             ),
             SizedBox(height: 15),
             TextField(
               keyboardType: TextInputType.number,
               controller: no2Controller,
               decoration: InputDecoration(
                 label: Text("Second Number", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                 hintText: "Enter second number...",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10)
                 )
               ),
             ),
             SizedBox(height: 15),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 getMathCalculation(buttonText:"+", onTap: (){
                   calculationChoice=1;
                 }),
                 getMathCalculation(buttonText:"_" , onTap: (){
                   calculationChoice=2;
                 }),
                 getMathCalculation(buttonText:"*", onTap: (){
                   calculationChoice=3;
                 } ),
                 getMathCalculation(buttonText:"/", onTap: (){
                   calculationChoice=4;
                 } ),
               ],
             ),
             ElevatedButton(onPressed: () {
               if(no1Controller.text.isNotEmpty && no2Controller.text.isNotEmpty){
               var no1=double.parse(no1Controller.text);
               var no2=double.parse(no2Controller.text);
               num res =0;
               setState(() { if(calculationChoice==1){
                 res =no1+no2;
                 result= "Addition of $no1 and $no2 is ${res.toStringAsFixed(2)}";
               }
               else if (calculationChoice==2){
                 if (no2>no1){
                   res=no2-no1;}
                 else{
                   res=no1-no2;
                 }
                   result= "Subtraction of $no1 and $no2 is $res";
               }
               else if (calculationChoice==3){
                 res=no1*no2;
                 result= "Multiplication of $no1 and $no2 is $res";
               }
               else if (calculationChoice==4){
                 res=no1/no2;
                 result= "Div of $no1 and $no2 is ${res.toStringAsFixed(2)}";
               }
               else{
                  setState(() {
                    result= "Please choose maths operator";
                  });
               }

               });
               }
                 else{
                   setState(() {
                     result="Pls fill all blank requirement";
                     calculationChoice=0;

                   });
                 } },
                 child: Text("RESULT")),
             SizedBox(height: 15),
             Container(
               color: Colors.blue.shade400,
                 child: Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Text(result, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                 )),
           ],
         ),
       ),
     ),
   );
  }
  Widget getMathCalculation ({required String buttonText, required VoidCallback onTap} ){
    return ElevatedButton(onPressed: onTap,
        child: Text(buttonText),
    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade100, foregroundColor: Colors.blue.shade900),);
  }
}

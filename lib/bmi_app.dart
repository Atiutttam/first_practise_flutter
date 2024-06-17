

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiApp extends StatefulWidget {  @override
  State<StatefulWidget> createState() {
   return BmiAppState();
  }
}

class BmiAppState extends State<BmiApp> {
  var ftHeightController=TextEditingController();
  var inHeightController=TextEditingController();
  var kgWeightController=TextEditingController();
  String result="";
  Color bgColor=Colors.blue.shade50;
  Color txtColor=Colors.blue;
  String imgPath="";
  ///Image bgImage=Image.asset("assets/images/healthcare.png");
  double bmi=0;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Row(
        children: [
          Container(
              height: 40, width: 40,
              child: Image.asset("assets/images/healthcare.png")),
          SizedBox(width: 11,),
          Text("BMI APP", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),)
        ],
      ),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        color: Colors.blue.shade50,
        child: Column(
          children: [
            SizedBox(height: 11,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(width:1, color: Colors.black ),
                  boxShadow: [BoxShadow(blurRadius:5,color:bgColor)]

                ),
                child: Center(child: Text("${bmi.toStringAsFixed(2)}", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25, color: txtColor ),)),
              ),
            ),
            imgPath!="" ? Image.asset(imgPath, width: 50,height: 50,): Container(),
            Container(
              child: Text(result, style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20, color: Colors.blue ),)),

            SizedBox(height: 11,),
            SizedBox(
              height: 55,
              child: TextField(
                style: TextStyle(fontSize: 20, color: Colors.blue,fontWeight: FontWeight.w900),
                keyboardType: TextInputType.number,
                controller: ftHeightController,
                decoration: InputDecoration(
                  label: Text("Height in ft"),
                  hintText: " Enter your height in ft",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11)
                  )
                ),
              ),
            ),
            SizedBox(height: 11,),
            SizedBox(
              height: 55,
              child: TextField(
                style: TextStyle(fontSize: 20, color: Colors.blue,fontWeight: FontWeight.w900),
                keyboardType: TextInputType.number,
                controller: inHeightController,
                decoration: InputDecoration(
                    label: Text("Height in inch"),
                    hintText: " Enter your height in inch",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)
                    )
                ),),
            ),
            SizedBox(height: 11,),
            SizedBox(
              height: 55,
              child: TextField(
                style: TextStyle(fontSize: 20, color: Colors.blue,fontWeight: FontWeight.w900),
                keyboardType: TextInputType.number,
                controller: kgWeightController,
                decoration: InputDecoration(
                    label: Text("Weight in Kg"),
                    hintText: " Enter your weight in kg",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)
                    )
                ),
              ),
            ),
            SizedBox(height: 11,),
            ElevatedButton(onPressed: (){
              if(ftHeightController.text.isNotEmpty && inHeightController.text.isNotEmpty && kgWeightController.text.isNotEmpty)
             { var ft=double.parse(ftHeightController.text);
              var inch=double.parse(inHeightController.text);
              var wt=double.parse(kgWeightController.text);
              num ht=0;

              ht=(ft*12*2.54+inch*2.54)/100;
              bmi=(wt)/(ht*ht);
              if(bmi<18){
                result=" You are Skiny";
                bgColor=Colors.red.shade50;
                txtColor=Colors.red.shade900;
                imgPath="assets/images/skiny.png";
             }
              else if (bmi>25){
                result="You are Obese";
                bgColor=Colors.red.shade50;
                txtColor=Colors.red.shade900;
                imgPath="assets/images/obesity.png";
              }
              else{
                result=" Congrates you are fit ";
                bgColor=Colors.green.shade50;
                txtColor=Colors.green.shade900;
                imgPath="assets/images/healthy.png";
              }
              setState(() {

              });
             }
              else {
                result=" Enter all parameters";
              imgPath="";
              }
              setState(() {});
            }, child: Text("Calculate BMI")),

          ],
        ),
      ),
    ),
  );
  }
}

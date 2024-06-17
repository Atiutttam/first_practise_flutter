
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  var myInputController=TextEditingController();
  var emailInputController=TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold (
        appBar: AppBar(
          title: Text("Basics of flutter"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal:25),
          //const EdgeInsets.all(8.0),////
          child: Column(
            children: [
              SizedBox(height: 8,),
              TextField(
                keyboardType: TextInputType.text,
                controller: myInputController,
                decoration: InputDecoration(
                  label: Text('Name'),
                  hintText: "Enter your name....",
                  prefixText: "Mr/Mrs",
                  prefixIcon:Icon(Icons.verified_user),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),

                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 2,color: Colors.red)
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "#",
                  controller: emailInputController,
                  decoration: InputDecoration(

                    suffixText: "@gmail.com",
                    label: Text('Email'),
                    hintText: "Enter your email id....",
                    border:OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(25),
                        borderSide: BorderSide(width: 2,color: Colors.green)
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                  enabled: false,
                  controller: myInputController,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    disabledBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(25),
                      borderSide: BorderSide(width: 2,color: Colors.grey.shade400),

                    ),
                  ),
                ),),
              // TextField(
              //   decoration: getInputDecoration(),
              ElevatedButton(onPressed: (){
                var name =myInputController.text;
                var email="${emailInputController.text}@gmail.com";

                print(name);
                print(email);
              },
                  child: Text("Next Page")),

            ],
          ),
        )

    );
  }
}
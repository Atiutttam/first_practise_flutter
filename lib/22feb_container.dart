

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Widget"),
      ),
      body: InkWell(                 ///Container wrapped by Inkwell
        onTap: (){},
        child: Container(
          margin: EdgeInsets.only(top: 20,left: 12,right: 12),
          // decoration: getBoxDecoration(),

          child: InputDecorator(
            decoration: InputDecoration(
                labelText: "   Bills",
                labelStyle: TextStyle(fontSize: 25,color: Colors.red,),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2,color: Colors.orangeAccent),
                    borderRadius: BorderRadius.circular(20)
                )
            ),
            child: Row(
              children: [
                Text("Text",style: TextStyle(color: Colors.blue,fontSize: 25),),
                Expanded(child: SizedBox(width: 1,)),
                Icon(Icons.add),
                Padding(
                    padding: const EdgeInsets.all(20.0),
                     child: Container(
                       width: double.infinity,height: double.infinity,
                       decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage("assets/images/healthcare.png")
                                          ),),
                         child: Align(alignment: Alignment.bottomRight, child:Text("Container")))),
                Container(
                  width: 200,height: 250,

                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(23)),
                      border: Border.all(
                          width: 0.75, color: Colors.red
                      )
                  ),
                  child: Center(child: Text("Hello Raman Kumar")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
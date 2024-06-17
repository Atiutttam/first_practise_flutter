

import 'package:flutter/material.dart';

BoxDecoration getBoxDecoration (){
  return BoxDecoration(
      color: Colors.grey.shade50,
      border: Border.all(width: 1,color: Colors.grey.shade100,),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(blurRadius:20, color: Colors.grey, spreadRadius:5)
      ]
  );
}
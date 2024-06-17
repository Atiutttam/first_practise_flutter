import 'package:first_practise/addpage.dart';
import 'package:first_practise/bmi_app.dart';
import 'package:first_practise/Expanded_basicflutter2.dart';
import 'package:first_practise/tab_bar.dart';
import 'package:flutter/material.dart';

import 'text_color_basicflutter01.dart';
import '22feb_raw_column.dart';
import '02march_grid.dart';
import '29feb_button.dart';
import 'custom_widget.dart';
import '02march_gridview_builder.dart';
import 'image_basic.dart';
import '01march_listview_listviewbuilder.dart';

void main(){
  runApp(myApp());

}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: "My first App",
          debugShowCheckedModeBanner: false,
          theme: ThemeData (
              fontFamily: "fontMain",
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
           home: TabBarBasics(),);} }


//
// class HomePageState extends State<HomePage>{
//   var nameController=TextEditingController();
//   String name="";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//           title: Row(
//             children: [
//               Icon(Icons.photo),
//               Text("Hi, Ashok Kumawat", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
//             ],
//             ),),
//       body: Container(
//         color: Colors.blue.shade50,
//         child: Column(
//           children: [
//             SizedBox(
//               height: 10,
//             ),
//             Center(
//               child: Container(
//                 width: 350,
//                 child: TextField(
//                   controller:nameController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20)
//                     )
//                   ),
//
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(" Welcome to $name"),
//             ElevatedButton(onPressed:
//                 (){
//               name=nameController.text;
//               setState(() {
//
//               });
//                 },
//                 child: Text("Submit"))
//           ],
//         ),
//       ),
//     );
//   }
//
// }
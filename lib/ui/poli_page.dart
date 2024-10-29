import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/poli_form.dart'; 
import '../model/poli.dart'; 
// ignore: unused_import
import 'poli_detail.dart'; 
import 'poli _item.dart';  
class PoliPage extends StatefulWidget { 
const PoliPage({super.key});  
@override 
   State<PoliPage> createState() => _PoliPageState();   
 }   
    
 class _PoliPageState extends State<PoliPage> {   
   @override   
   Widget build(BuildContext context) {   
     return Scaffold(   
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions:[
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) =>PoliForm()));
              },
          )
      ],
       ),
      body: ListView( 
         children: [   
           PoliItem(poli: Poli(namaPoli: "Poli Anak")),   
           PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),   
           PoliItem(poli: Poli(namaPoli: "Poli Gigi")),   
           PoliItem(poli: Poli(namaPoli: "Poli THT")),   
         ],   
       ),   
     );   
   }   
 }
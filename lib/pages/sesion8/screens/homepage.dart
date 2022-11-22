import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Home', style:TextStyle(color: Colors.white)),
        centerTitle: true,
        
        
      ),
      
      body: Center(
        child: Column(
          children: [

SizedBox(
  height: 20,
),
  Image.network('https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_960_720.jpg', ),
 
  SizedBox(
  height: 75,
),
  Image.network('https://cdn.pixabay.com/photo/2015/07/09/22/45/tree-838667_960_720.jpg', ),
  
          ],
          ),
      ),
    );

  }
}
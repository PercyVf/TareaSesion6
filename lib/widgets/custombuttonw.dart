import 'package:flutter/material.dart';

class CustomButtow extends StatelessWidget {
  final Function incrementarb;
  final Function disminuirb;
  final Function resetb;

  const CustomButtow({super.key,
   required this.incrementarb, 
   required this.disminuirb, 
   required this.resetb});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:[
      FloatingActionButton(
        backgroundColor: Colors.white,
        heroTag: const Text('btn1'),
        tooltip:"incrementar",
        child: const Icon(Icons.add, color: Colors.black,),
        onPressed:() => incrementarb ()
        ),
         FloatingActionButton(
          backgroundColor: Colors.white,
        heroTag: const Text('btn2'),
        tooltip:"disminuir",
        child: const Icon(Icons.remove_circle, color: Colors.black,),
        onPressed:() => disminuirb ()
        ),
         FloatingActionButton(
          backgroundColor: Colors.white,
        heroTag: const Text('btn3'),
        tooltip:"resetear",
        child: const Icon(Icons.reset_tv_outlined, color:Colors.black),
        onPressed:() => resetb ()
        ),

    ]
    );
  }
}
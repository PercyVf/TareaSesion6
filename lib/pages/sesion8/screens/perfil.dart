import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class perfil1 extends StatefulWidget {
  const perfil1({super.key});

  @override
  State<perfil1> createState() => _perfil1State();
}

class _perfil1State extends State<perfil1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Instagram'),
        ),
        body: perfil2()
      ),
    );
  }
}
class perfil2 extends StatelessWidget {
  const perfil2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
          child:  Row(
         
          children: [
            Row(
              children: [
                ClipOval(
                  child:   Image.network('https://cdn.pixabay.com/photo/2020/07/11/11/09/seagull-5393605_960_720.jpg',
            width: 50.0,
            height: 50.0,
            fit: BoxFit.cover,
            ),
                ),
         
            SizedBox(
              width: 10.0,
            ),

            Text('Post',
            style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
             SizedBox(
              width: 50.0,
            ),
            Text('Followers',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
              SizedBox(
              width: 50.0,
            ),
            Text('Guardados',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
            
              ],
              
            ),
            
            
 
            Icon(Icons.more_vert)
            
          ],
        ) ,
        ),
         Image.network('https://cdn.pixabay.com/photo/2015/06/22/08/37/children-817365_960_720.jpg',),
        SizedBox(
          height: 10.0,
        ),
         Image.network('https://cdn.pixabay.com/photo/2013/11/01/11/13/dolphin-203875_960_720.jpg',),
      
      ],
    );
  }
}
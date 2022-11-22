import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Search', style:TextStyle(color: Colors.white)),
        centerTitle: true,
        
        
      ),
      body:SingleChildScrollView(
        
        child: Column(
        
          children:  [
             SizedBox(
              height: 250.0,
             width: 400.0,
             child: Image.network(
              'https://cdn.pixabay.com/photo/2022/10/07/12/02/sunset-7504891_960_720.jpg',
              fit: BoxFit.fitWidth,
            
              )
        
              ),
               SizedBox(
              height: 250.0,
             width: 400.0,
             child: Image.network(
              'https://cdn.pixabay.com/photo/2022/10/09/08/43/road-7508538_960_720.jpg',
              fit: BoxFit.fitWidth,
              )
        
              ),
                SizedBox(
             height: 250.0,
             width: 400.0,
             child: Image.network(
              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
              fit: BoxFit.fitWidth,
              )
        
              ),
              
              
              
        
          ]
          
          
          
          
        ),
      )
      

          );
    
  }
}

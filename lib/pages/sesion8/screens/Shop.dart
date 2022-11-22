import 'package:flutter/material.dart';

class TiendaShop extends StatelessWidget {
  const TiendaShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Tienda', style:TextStyle(color: Colors.white)),
        centerTitle: true,
        
        
      ),
      body:SingleChildScrollView(
        
        child: Column(
        
          children:  [
             SizedBox(
              height: 250.0,
             width: 400.0,
             child: Image.network(
              'https://cdn.pixabay.com/photo/2016/03/04/19/36/beach-1236581_960_720.jpg',
              fit: BoxFit.fitWidth,
            
              )
        
              ),
               SizedBox(
              height: 250.0,
             width: 400.0,
             child: Image.network(
              'https://cdn.pixabay.com/photo/2013/11/28/10/36/road-220058_960_720.jpg',
              fit: BoxFit.fitWidth,
              )
        
              ),

                SizedBox(
             height: 280,
             width: 400,
             child: Image.network(
              'https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_960_720.jpg',
              fit: BoxFit.fitWidth,
              ),
        
              ),
                SizedBox(
             height: 310,
             width: 400.0,
             child: Image.network(
              'https://cdn.pixabay.com/photo/2013/12/17/20/10/bubbles-230014_960_720.jpg',
              fit: BoxFit.fitWidth,
              )
        
              ),
              
              
              
        
          ]
          
          
          
          
        ),
      )
      

          );
    
  }
}

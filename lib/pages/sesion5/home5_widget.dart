import 'package:flutter/material.dart';



class Home5Widget extends StatelessWidget {
  const Home5Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            
        title: const Text('Sesion 5', style: TextStyle(color:Color.fromARGB(255, 0, 140, 255))),
        
        backgroundColor: Color.fromARGB(255, 65, 63, 63)
        
      ),
      body: Row(
        children: [
       Expanded(
            flex: 1,
            child: Container(
              height: double.infinity,
              alignment: Alignment.center,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Mi edad:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  const Text(
                    '24',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
    
    
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              color:Colors.blue,
              child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(image:NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/004/607/791/small/man-face-emotive-icon-smiling-male-character-in-blue-shirt-flat-illustration-isolated-on-white-happy-human-psychological-portrait-positive-emotions-user-avatar-for-app-web-design-vector.jpg")),
                    Text('Percy'),
                    Text('Valladolid'),
                    Text('Florindez'),
                  ]
                ),
              ),
            ),
          )
          ]
          ),
    );
  }
}
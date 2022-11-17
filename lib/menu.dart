import 'package:ejercicio/pages/sesion4/home4.dart';
import 'package:ejercicio/pages/sesion6/home6screen.dart';
import 'package:ejercicio/pages/sesion5/home5_widget.dart';
import 'package:ejercicio/pages/sesion7/screen/home7screen.dart';
import 'package:ejercicio/pages/sesion7/screen/scrolltiktok.dart';
import 'package:flutter/material.dart';

import 'pages/sesion3/inicio.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 65, 63, 63),
        centerTitle: true,
        title: const Text('Sesiones', style: TextStyle(color:Color.fromARGB(255, 0, 140, 255))),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
         
          children: [
            buttonWidget(
              name: 'Sesion 3',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const IndexSesion3()),
                );
              },
            ),
            
           const SizedBox(
                height: 10,
              ),
              
            buttonWidget(
              name: 'Sesion 4',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home4()),
                );
              },
            ),
            
            const SizedBox(
                height: 10,
              ),

              buttonWidget(
              name: 'Sesion 5',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home5Widget()),
                );
              },
            ),
              
            const SizedBox(
                height: 10,
              ),
              
               buttonWidget(
              name: 'Sesion 6',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home6Screen()),
                );
              },
            ),
                const SizedBox(
                height: 10,
              ),
                buttonWidget(
              name: 'Sesion 7',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScrollTiktok()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  MaterialButton buttonWidget({String? name, Function()? onPressed}) {
    return MaterialButton(
      height: 50,
      minWidth: double.infinity,
      elevation: 1,
      color: const Color.fromARGB(255, 6, 59, 103),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        name!,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      onPressed: () => onPressed!(),
    );
  }
}

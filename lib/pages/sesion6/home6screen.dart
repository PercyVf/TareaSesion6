import 'package:ejercicio/widgets/custombuttonw.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home6Screen extends StatefulWidget {
  const Home6Screen({super.key});

  @override
  State<Home6Screen> createState() => _Home6ScreenState();
}

class _Home6ScreenState extends State<Home6Screen> {
int numero = 0;

void aumentar() {
  setState(() {
    numero++;
   
  });
}

void disminuir(){
  setState(() {
    numero--;
  });
}

void resetear(){
  setState(() {
    numero = 0;
  });
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:Color(0xFFFF5800),
     
      appBar: AppBar(
        backgroundColor: Color(0xFFFF5800),
        title:  Text('sesion6', style: GoogleFonts.kolkerBrush(fontSize: 80, color:Color(0xFF1A2C6D))),
        centerTitle: true,
      ),
      

      body: Center(
        child: Column(
          
         
          children:  [
             const SizedBox(
                height: 50,
              ),
Image.asset('assets/perfil.jpeg',height:250,),
  const SizedBox(
                height: 50,
              ),
Text('Mi nombre: Percy', style: GoogleFonts.pacifico(fontSize:30, color: Color(0xFFDDBEB8))),
Text('Apellido : Valladolid Florindez', style: GoogleFonts.pacifico(fontSize: 25, color:Color(0xFFDDBEB8))),
 const SizedBox(
                height: 3,
              ),
          Text('contador', style: GoogleFonts.kolkerBrush(fontSize:80, color: Color(0xFF1A2C6D))),

          Text('$numero', style:TextStyle(fontSize:30,color:  Color(0xFFDDBEB8))),
        ],
      ),
      
    ),

  floatingActionButton: CustomButtow(
    incrementarb: ()=>aumentar(),
    disminuirb: ()=>disminuir(),
    resetb: ()=>resetear(),
  ),
    );
   
  }
}
import 'package:ejercicio/pages/sesion7/widgets/platillawidget.dart';
import 'package:flutter/material.dart';

import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class ScrollTiktok extends StatefulWidget {
  const ScrollTiktok({super.key});

  @override
  State<ScrollTiktok> createState() => _ScrollTiktokState();
}

class _ScrollTiktokState extends State<ScrollTiktok> {
  late Controller controller;

  final List<dynamic> data = [
    {
      'img':
          'https://t1.ev.ltmcdn.com/es/posts/2/2/9/mosquito_familia_culicidae_3922_0_600.webp',
      'title': 'MOSQUITO (familia Culicidae)',
     
      'content':
          'El animal más peligroso del mundo para el humano es uno de los más pequeños y con el que convivimos frecuentemente. Al alimentarse de sangre representan un importante vector que transmite enfermedades como la malaria, dengue, fiebre amarilla o chikungunya. Los mosquitos provocan que 200 millones de personas se enfermen, de las que aproximadamente 600 mil mueren.'
    },
    {
      'img':
          'https://t1.ev.ltmcdn.com/es/posts/2/2/9/elefantes_africanos_loxodonta_africana_3922_1_600.webp',
      'title':'ELEFANTE (Loxodonta africana)',
    
      'content':
          'Los elefantes tienen una apariencia tranquila y amable, pero no podemos pasar por alto sus 6 mil kilos de peso. Cuando son molestados pueden correr a 40 kilómetros por hora. Al ser animales sociales y con el enorme peso, sus estampidas son sumamente riesgosas. Pero estos arranques también son razonables desde una perspectiva humana: hay testimonios de elefantes que han usado su fuerza para poner en orden al hombre. En una ocasión elefantes destruyeron un pueblo que se había extendido sobre su territorio..'
    },
    {
      'img':
          'https://t2.ev.ltmcdn.com/es/posts/2/2/9/escorpion_de_cola_gorda_androctonus_australis_3922_2_600.webp',
      'title': 'ESCORPIÓN (Androctonus australis)',
      
      'content':
          'El escorpión de cola gorda es un escorpión africano y uno de los animales más peligrosos del mundo. Una pequeña picadura puede matar a un hombre en 7 horas y a un perro en tan solo 7 minutos. Su veneno es muy peculiar porque parece estar diseñado especialmente para matar y causar muchísimo dolor en animales vertebrados, más por protección que para alimento, ya que ellos comen principalmente invertebrados. En cuanto a otros alacranes, existen 1.500 especies de las cuales 25 pueden matar al humano. En México y Estados Unidos mueren más personas por alacranes que por serpientes.'
    },
    {
      'img':
          'https://t2.ev.ltmcdn.com/es/posts/2/2/9/serpientes_suborden_serpentes_3922_3_600.webp',
      'title': 'SERPIENTE (suborden Serpentes)',
      
      'content':
          'Las serpientes pueden ser o no ser venenosas, pero de cualquier modo sus colmillos pueden causar graves daños. Las serpientes no venenosas no causan muertes pero sí complicaciones. Entre las serpientes, la mordida de la cobra real (Ophiophagus hannah) es una de las más peligrosas, además de ser la serpiente venenosa más grande. Puede inyectar hasta 7 mililitros de veneno de una sola vez, llevando a muchos humanos a la muerte. A sus presas naturales, como ratones, los aniquila fácilmente.'
    },
    {
      'img':
          'https://t1.ev.ltmcdn.com/es/posts/2/2/9/hipopotamos_hippopotamus_amphibius_3922_4_600.webp',
      'title': 'HIPOPÓTAMO (Hippopotamus amphibius)',
      
      'content':
          'En África mueren más personas a causa de hipopótamos que por cualquier otro animal. Esto es sorprendente porque ellos son animales herbívoros, pero atacan cuando se sienten amenazados. Miden 2 metros y pesan 5 toneladas, y pueden correr a 32 kilómetros por hora con lo que fácilmente pueden derribar a una persona, o incluso a leones. Las hembras suelen ser las más violentas cuando tienen hijos que proteger.'
    },
    {
      'img':
          'https://t1.ev.ltmcdn.com/es/posts/2/2/9/cocodrilo_del_nilo_crocodylus_niloticus_3922_5_600.webp',
      'title': 'COCODRILO (Crocodylus niloticus)',
     
      'content':
          'El animal más peligroso de agua dulce es el cocodrilo del Nilo. Sus colmillos pueden romper hasta huesos. Viven bajo el agua al acecho esperando a que animales se acerquen a beber. En rápidos movimientos logran ahogarlos, para tragarlos completos y empezar a digerirlos. En algunas zonas hay dos muertes diarias a causa de estos cocodrilos.'
    },
    {
      'img':
          'https://t1.ev.ltmcdn.com/es/posts/2/2/9/pez_piedra_synanceia_horrida_3922_6_600.webp',
      'title': 'PEZ PIEDRA (Synanceia horrida)',
      
      'content':
          'Cuando hablamos del pez piedra nos referimos al animal más peligroso del mundo marino por ser el pez con más veneno. De hecho, el veneno del Synanceia horrida se aloja en las espinas de sus aletas y en glándulas. Es neurotóxico y en cualquier momento que entremos en contacto con él se crearán heridas, que nos pueden llevar a la muerte.'
    }
  ];

  Controller? testingController;

  @override
  void initState() {
    controller = testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });
    super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      backgroundColor: Colors.black,
     appBar: AppBar(
      backgroundColor: Colors.black,
        title: const Text('Animales mas peligrosos', style: TextStyle(color:Colors.lightBlue),),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.lightBlue,
          ),
        ),
      ),
    
      body: TikTokStyleFullPageScroller(
          contentSize: data.length,
          swipePositionThreshold: 0.2,
          swipeVelocityThreshold: 2000,
          animationDuration: const Duration(milliseconds: 400),
          controller: controller,
          builder: (BuildContext context, int index) {
            final sitios = data[index];

            return PlantillaWidget(
              img: sitios['img'],
              title: sitios['title'],
              content: sitios['content'],
            );
          }),
    );
  }
}

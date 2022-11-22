import 'package:ejercicio/pages/sesion8/widgets/tiktokwidget.dart';
import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {
        'img':
            'https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712_960_720.jpg',
        'username': 'Img1'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2016/11/14/04/45/elephant-1822636_960_720.jpg',
        'username': 'Img2'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2015/07/09/22/45/tree-838667_960_720.jpg',
        'username': 'Img3'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2015/04/19/08/32/rose-729509_960_720.jpg',
        'username': 'Img4'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2015/03/30/20/33/heart-700141_960_720.jpg',
        'username': 'Img5'
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              controller: controller,
              itemBuilder: (context, index) {
                final datos = data[index];
                return TiktokWidget(
                  
                  img: datos['img'],
                  username: datos['username'],
                );
              },
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              
                
                SizedBox(
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        '',
                      ),
                      Text(
                        '',
                      )
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined), color: Colors.white,)
              ],
            )
           
          ],
        ),
      ),
    );
  }
}

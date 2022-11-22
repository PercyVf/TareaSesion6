import 'package:flutter/material.dart';

class TiktokWidget extends StatelessWidget {
  final String? img;
  final String? username;

  const TiktokWidget({super.key, this.img, this.username});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(fit: BoxFit.fill, '$img'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '$username',
                        style: const TextStyle(fontSize: 18,color: Colors.white),
                      ),
                   
                    ],
                  ),
              
                  const Text('#Paisajes', style: TextStyle(color: Colors.white),),
                   const Icon(Icons.music_note,color: Colors.white,), Text('Original_audio', style: TextStyle( color:Colors.white)), 
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2015/06/22/08/37/children-817365_960_720.jpg'),
                  ),
                  Column(
                    children: const [Icon(Icons.favorite_border), Text('42')],
                  ),
                  Column(
                    children: const [Icon(Icons.comment_outlined), Text('42')],
                  ),
                 
                  Column(
                    children: const [Icon(Icons.send), Text('42')],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

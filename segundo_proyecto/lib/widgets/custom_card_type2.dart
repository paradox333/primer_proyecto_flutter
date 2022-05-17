import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [

          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://i.pinimg.com/originals/7b/8b/da/7b8bda529f590e9f3b8d2275e832571f.jpg'),
            ), 
        ]
        ),
    );
  }
}
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);
    int cuenta = 0;

    return Scaffold(
      appBar: AppBar(
      title: const Text('Primera Aplicación Con Flutter'),
      elevation: 0,
      ),
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('Número de Clicks', style: fontSize30),
            Text('$cuenta', style: fontSize30)
          ],
          ),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.plus_one_sharp),
            onPressed: (){
              print('$cuenta');
              cuenta++;
            },
          ),
    );
  }
}
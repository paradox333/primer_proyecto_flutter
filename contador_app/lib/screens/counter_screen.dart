import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  
  int cuenta = 0;

  void increase(){
    cuenta++;
    setState(() {});
  }

  void reset(){
    cuenta = 0;
    setState(() {});
  }

  void decrease(){
    cuenta--;
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);

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
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: CustomFloatingActions(
            increaseFn: increase,
            resetFn: reset,
            decreaseFn: decrease
          ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  
  final Function increaseFn;
  final Function resetFn;
  final Function decreaseFn;

  const CustomFloatingActions({Key? key,
   required this.increaseFn,
   required this.resetFn,
   required this.decreaseFn
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_sharp),
          onPressed: () => decreaseFn(),
        ),
        
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () => resetFn()
        ),

        FloatingActionButton(
          child: const Icon(Icons.plus_one_sharp),
          onPressed: () => increaseFn()
        ),
        
      
        
      ],
    );
  }
}
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
    int number = 0;

  void increase () => setState(() => number++ );
  void decrease () => setState(() => number-- );
  void reset () => setState(() => number = 0 );
  
  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10.0,
      ),
      backgroundColor: Colors.amber,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            const Text('Clicks Counter', style: fontSize ),
            Text('$number', style: fontSize ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions( increaseFn: increase, decreeaseFn: decrease, resetFn: reset, ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreeaseFn;
  final Function resetFn;
  const CustomFloatingActions({
    Key? key, required this.increaseFn, required this.decreeaseFn, required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () => decreeaseFn() ,
          child:  const Icon(Icons.exposure_minus_1),
          ),
        FloatingActionButton(
          backgroundColor: Colors.grey,
          onPressed: () => resetFn(),
          child:  const Icon(Icons.restore_outlined),
          ),
        FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () => increaseFn(),
          child:  const Icon(Icons.add),
          ),
      ],
    );
  }
}
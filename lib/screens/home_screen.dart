import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    int number = 10;
    const fontSize = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => number++,
        child: const Icon(Icons.add),
        ),
    );
  }
}
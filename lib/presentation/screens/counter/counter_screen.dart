import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Counter Screen', style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),)),
        backgroundColor: Colors.blue
      ),
      body: Center( // Centrado Horizontal
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centrado Vertical
          children: const [
            Text('0', style: TextStyle(
              fontSize: 160,
              fontWeight: FontWeight.w100
            ),),
            Text('Clicks', style: TextStyle(
              fontSize: 25
            ),)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.plus_one)
      )
    );
  }
}
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen', style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),)),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
        // leading: IconButton( // Para ubicar los iconos del lado izquierdo del title
        //   icon: Icon(Icons.refresh_rounded),
        //   onPressed: () {}
        // ),
      ),
      body: Center( // Centrado Horizontal
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centrado Vertical
          children: [
            Text('$clickCounter', style: const TextStyle(
              fontSize: 160,
              fontWeight: FontWeight.w100
            ),),
            Text('Click${ clickCounter == 1 ? '' : 's'}', style: TextStyle(
              fontSize: 25
            ),)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter ++;
          
          setState((){});
        },
        child: const Icon(Icons.plus_one)
      )
    );
  }
}
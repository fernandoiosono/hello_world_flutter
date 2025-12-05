import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Counter Functions',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
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
      body: Center(
        // Centrado Horizontal
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centrado Vertical
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingActionButton(icon: Icons.plus_one),
          const SizedBox(height: 10), // Separación entre los Botones
          CustomFloatingActionButton(icon: Icons.exposure_minus_1_outlined),
        ],
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final IconData icon;

  const CustomFloatingActionButton({
    super.key, 
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: () {
        // clickCounter++;

        // setState(() {});

        // if (clickCounter > 0) {
        //   clickCounter--;

        //   setState(() {});
        // }
      },
      child: Icon(icon),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hello_world_flutter/presentation/widgets/custom_floating_button_widget.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  String clickLabel = 'Click';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Counter Functions',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue
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
              clickLabel,
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter++;
                clickLabel = (clickCounter == 1 ? 'Click' : 'Clicks');
              });
            },
          ),
          const SizedBox(height: 10), // Separación entre los Botones
          CustomFloatingButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if (clickCounter > 0) {
                setState(() {
                  clickCounter--;
                  clickLabel = (clickCounter == 1 ? 'Click' : 'Clicks');
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
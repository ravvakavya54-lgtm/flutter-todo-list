import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful and Stateless Widgets'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StaticWidget(),
              SizedBox(height: 20),
              CounterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

// Stateless Widget
class StaticWidget extends StatelessWidget {
  const StaticWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello! I am a Stateless Widget.',
      style: TextStyle(fontSize: 18),
    );
  }
}

// Stateful Widget
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Counter: $count',
          style: const TextStyle(fontSize: 22),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Text('Increment'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class LayoutsPage extends StatelessWidget {
  const LayoutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Layouts')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Row Layout
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 80, height: 50, color: Colors.red),
              Container(width: 80, height: 50, color: Colors.green),
              Container(width: 80, height: 50, color: Colors.blue),
            ],
          ),

          // Column Layout
          Column(
            children: [
              Container(width: 100, height: 40, color: Colors.orange),
              Container(width: 100, height: 40, color: Colors.purple),
            ],
          ),

          // Stack Layout
          Stack(
            alignment: Alignment.center,
            children: [
              Container(width: 150, height: 100, color: Colors.blue),
              Container(width: 80, height: 50, color: Colors.yellow),
            ],
          ),
        ],
      ),
    );
  }
}


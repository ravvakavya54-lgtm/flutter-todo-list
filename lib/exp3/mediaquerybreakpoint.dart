import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BreakpointsDemo(),
    ),
  );
}

class BreakpointsDemo extends StatelessWidget {
  const BreakpointsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    int columns;
    String device;

    if (width < 600) {
      columns = 1;
      device = 'Mobile';
    } else if (width < 1000) {
      columns = 2;
      device = 'Tablet';
    } else {
      columns = 3;
      device = 'Desktop';
    }

    final tasks = [
      'Learn Flutter',
      'Complete Assignment',
      'Practice Dart',
      'Build Todo List',
      'Test Responsive UI',
      'Complete Experiment 3',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Todo List'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              '$device View ($width px)',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                itemCount: tasks.length,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 80,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    child: Center(
                      child: Text(
                        tasks[index],
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
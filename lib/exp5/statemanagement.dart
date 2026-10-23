import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Counter(),
      child: const MyApp(),
    ),
  );
}

// Provider state
class Counter extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'State Management',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Using setState',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Count: $count',
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Text('Increment'),
            ),
            const SizedBox(height: 30),
            const Text(
              'Using Provider',
              style: TextStyle(fontSize: 20),
            ),
            Consumer<Counter>(
              builder: (context, counter, child) {
                return Column(
                  children: [
                    Text(
                      'Count: ${counter.count}',
                      style: const TextStyle(fontSize: 24),
                    ),
                    ElevatedButton(
                      onPressed: counter.increment,
                      child: const Text('Increment'),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

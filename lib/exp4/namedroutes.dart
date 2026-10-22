import 'package:flutter/material.dart';

void main() {
  runApp(const NamedRoutesApp());
}

class NamedRoutesApp extends StatelessWidget {
  const NamedRoutesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const TodoHome(),
        '/tasks': (context) => const TaskPage(),
      },
    );
  }
}

class TodoHome extends StatelessWidget {
  const TodoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Todo List',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/tasks');
          },
          child: const Text('View Tasks'),
        ),
      ),
    );
  }
}

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Tasks',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.check_circle_outline),
            title: Text('Learn Flutter'),
          ),
          ListTile(
            leading: Icon(Icons.check_circle_outline),
            title: Text('Complete Assignment'),
          ),
          ListTile(
            leading: Icon(Icons.check_circle_outline),
            title: Text('Practice Dart'),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Main Application and Theme (6b)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
      ),
      home: const TodoPage(),
    );
  }
}

// Custom Todo Card (6a)
class TodoCard extends StatelessWidget {
  final String task;

  const TodoCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: const Icon(Icons.task_alt,
            color: Colors.deepPurple),
        title: Text(task),
      ),
    );
  }
}

// Custom Button (6a)
class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Task Button Clicked!')),
        );
      },
      icon: const Icon(Icons.add),
      label: const Text('Add Task'),
    );
  }
}

// Main To-Do Screen
class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My To-Do List'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'My Daily Tasks',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 20),
            const TodoCard(task: 'Complete Flutter Experiment'),
            const TodoCard(task: 'Practice Dart Programming'),
            const TodoCard(task: 'Learn Custom Widgets'),
            const SizedBox(height: 20),
            const AddButton(),
          ],
        ),
      ),
    );
  }
}

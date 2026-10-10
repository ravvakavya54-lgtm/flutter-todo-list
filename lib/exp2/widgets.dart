import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My To-Do List'),
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Enter your task',
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Add Task'),
          ),
          CheckboxListTile(
            title: const Text('Learn Flutter'),
            value: false,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
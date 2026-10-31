import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
    );
  }
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<Map<String, dynamic>> tasks = [];
  bool loading = true;
  String error = '';

  Future<void> fetchTasks() async {
    try {
      final response = await http.get(
        Uri.parse(
          'https://jsonplaceholder.typicode.com/todos?_limit=10',
        ),
      );

      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body);

        if (!mounted) return;

        setState(() {
          tasks = data.cast<Map<String, dynamic>>();
          loading = false;
        });
      } else {
        throw Exception('Failed to fetch tasks');
      }
    } catch (e) {
      if (!mounted) return;

      setState(() {
        error = 'Unable to load tasks. Check internet connection.';
        loading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My To-Do Tasks'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : error.isNotEmpty
              ? Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(error),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            loading = true;
                            error = '';
                          });
                          fetchTasks();
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    final task = tasks[index];

                    return Card(
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: Icon(
                          task['completed'] == true
                              ? Icons.check_circle
                              : Icons.pending_actions,
                          color: task['completed'] == true
                              ? Colors.green
                              : Colors.orange,
                        ),
                        title: Text(task['title'] ?? ''),
                        subtitle: Text(
                          task['completed'] == true
                              ? 'Completed'
                              : 'Pending',
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}


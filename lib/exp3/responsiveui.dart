import 'package:flutter/material.dart';
 
 void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TodoList(),
  ));
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final controller = TextEditingController();
  final List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final columns = width < 600 ? 1 : width < 1000 ? 2 : 3;

    return Scaffold(
      appBar: AppBar(title: const Text('My Todo List')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Enter task',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.text.trim().isNotEmpty) {
                  setState(() {
                    tasks.add(controller.text.trim());
                    controller.clear();
                  });
                }
              },
              child: const Text('Add Task'),
            ),
            Text('Total Tasks: ${tasks.length}'),
            Expanded(
              child: GridView.builder(
                itemCount: tasks.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  mainAxisExtent: 70,
                ),
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text(tasks[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        setState(() => tasks.removeAt(index));
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
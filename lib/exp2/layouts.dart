import 'package:flutter/material.dart';

class LayoutsPage extends StatelessWidget {
  const LayoutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo Layouts')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Row: Todo title and add button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'My Tasks',
                  style: TextStyle(fontSize: 24),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Column: Todo items
            Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.check_circle_outline),
                  title: const Text('Learn Flutter'),
                  trailing: const Icon(Icons.delete_outline),
                ),
                ListTile(
                  leading: const Icon(Icons.check_circle_outline),
                  title: const Text('Practice Widgets'),
                  trailing: const Icon(Icons.delete_outline),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Stack: Task count badge
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.blue.shade100,
                  child: const Center(
                    child: Text('Your Todo Dashboard'),
                  ),
                ),
                const Positioned(
                  right: 10,
                  top: 10,
                  child: CircleAvatar(
                    radius: 15,
                    child: Text('2'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


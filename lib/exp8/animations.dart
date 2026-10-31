import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationPage(),
    );
  }
}

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List Animations'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: animate ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Complete Flutter Experiment',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedSlide(
              offset: animate
                  ? Offset.zero
                  : const Offset(1.5, 0),
              duration: const Duration(seconds: 1),
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Practice Dart Programming',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  animate = !animate;
                });
              },
              child: const Text('Animate Tasks'),
            ),
          ],
        ),
      ),
    );
  }
}
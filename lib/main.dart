import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RotationDemo());
  }
}

// This widget demonstrates RotationTransition
class RotationDemo extends StatefulWidget {
  @override
  _RotationDemoState createState() => _RotationDemoState();
}

class _RotationDemoState extends State<RotationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation; // Defines rotation values

  @override
  void initState() {
    super.initState();

    // duration
    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    // Tween defines start and end rotation values
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Makes animation repeat continuously
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RotationTransition Demo"), centerTitle: true),
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(Icons.refresh, size: 80, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

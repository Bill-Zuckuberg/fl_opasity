import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Opacity Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OpacityExample(title: 'Opacity Demo'),
    );
  }
}

class OpacityExample extends StatefulWidget {
  const OpacityExample({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<OpacityExample> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  double _opacity1 = 1, _opacity2 = 1, _opacity3 = 1;

  Widget _buildContainer(Color color) {
    return Container(
      height: 150,
      width: 150,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text('data'),
          GestureDetector(
            onTap: () {
              setState(() {
                _opacity1 = 1 - _opacity1;
              });
            },
            child: AnimatedOpacity(
              opacity: _opacity1,
              duration: const Duration(milliseconds: 200),
              child: _buildContainer(Colors.red),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _opacity2 = 1 - _opacity2;
              });
            },
            child: AnimatedOpacity(
              opacity: _opacity2,
              duration: const Duration(seconds: 2),
              child: _buildContainer(Colors.yellow),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _opacity3 = 1 - _opacity3;
              });
            },
            child: AnimatedOpacity(
              opacity: _opacity3,
              duration: const Duration(seconds: 3),
              child: _buildContainer(Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}

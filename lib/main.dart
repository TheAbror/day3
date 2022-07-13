import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _fontSize = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TextField(
                textAlign: TextAlign.center,
                maxLines: null,
                textInputAction: TextInputAction.done,
                style:
                    TextStyle(fontSize: _fontSize, fontWeight: FontWeight.bold),
              ),
            ),
            Slider(
              value: _fontSize,
              min: 18,
              max: 200,
              onChanged: (double newValue) {
                setState(() {
                  _fontSize = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

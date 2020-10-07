import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordair="test word";
    return MaterialApp(
      title: 'hello',
      home: Scaffold(

        body: Center(
          child: Text(wordair),
        ),
      ),
    );

  }}


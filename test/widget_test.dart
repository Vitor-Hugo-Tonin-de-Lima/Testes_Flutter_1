// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Titulo do widget",
    home: Container(
      color: Colors.amber,
      child: Column(
        children: [
          Text("Texto 1"),
          Text("Texto 2"),
          Text("Texto 3")
        ],
      )
      ),
  ));
}

import 'package:flutter/material.dart';
import 'package:responsive_adaptive/screens/aspect_ratio_example.dart';
import 'package:responsive_adaptive/screens/layout_builder_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AspectRatioExample(),
    );
  }
}

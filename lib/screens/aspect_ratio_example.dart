import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
        // this is width : height => it means that width is five times the height
        aspectRatio: 5 / 1,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}

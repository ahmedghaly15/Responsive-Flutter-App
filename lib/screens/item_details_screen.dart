import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          number.toString(),
          style: const TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

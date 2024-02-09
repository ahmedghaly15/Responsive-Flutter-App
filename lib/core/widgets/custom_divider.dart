import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      // Make height 48 means that it has 24 above and below it
      height: 48,
      color: Color(0xffF1F1F1),
    );
  }
}

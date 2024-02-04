import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_adaptive/widgets/layout_builder/mobile_layout.dart';
import 'package:responsive_adaptive/widgets/layout_builder/tablet_layout.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        log(constraints.maxWidth.toString());
        // 500 called a break point
        if (constraints.maxWidth <= 500) {
          return const MobileLayout();
        } else {
          return const TabletLayout();
        }
      }),
    );
  }
}

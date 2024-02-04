import 'package:flutter/material.dart';
import 'package:responsive_adaptive/widgets/layout_builder/item.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Item(index: index);
      },
    );
  }
}

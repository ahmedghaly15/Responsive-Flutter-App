import 'package:flutter/material.dart';
import 'package:responsive_adaptive/widgets/layout_builder/item.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  int currentDisplayedNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Item(
                  index: index,
                  onTap: () {
                    setState(() {
                      currentDisplayedNumber = index;
                    });
                  },
                );
              },
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Center(
              child: Text(
                'Current Displayed Item: ${currentDisplayedNumber.toString()}',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_adaptive/screens/item_details_screen.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    this.onTap,
    required this.index,
  });

  final VoidCallback? onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ItemDetailsScreen(number: index),
              ),
            );
          },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        color: index % 2 == 0 ? Colors.red : Colors.blue,
        child: ListTile(
          title: const Text(
            'Item',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            '${index + 1}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}

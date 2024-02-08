import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive/constants.dart';
import 'package:responsive_adaptive/widgets/latest_transaction_item.dart';

class LatestTransactionItems extends StatelessWidget {
  const LatestTransactionItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      dragStartBehavior: DragStartBehavior.start,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          Constants.latestTransactionItems.length,
          (index) => IntrinsicWidth(
            child: LatestTransactionItem(
              latestTransactionInfo: Constants.latestTransactionItems[index],
            ),
          ),
          growable: false,
        ),
      ),
    );

    // return SizedBox(
    //   height: 80,
    //   // ListView.builder() is a lazy builder so we use it with lists of many items, therefore it only builds the items appears on the screen.
    //   // But in cases where the list is small, such as our list from its name (latest transaction), we can build all the items because they are already not many.
    //   child: ListView.separated(
    //     scrollDirection: Axis.horizontal,
    //     padding: EdgeInsets.zero,
    //     itemBuilder: (context, index) {
    //       // Use IntrinsicWidth to get the max width in the children of the item
    //       // which here is the subTitle

    //       return IntrinsicWidth(
    //         child: LatestTransactionItem(
    //           latestTransactionInfo: Constants.latestTransactionItems[index],
    //         ),
    //       );
    //     },
    //     separatorBuilder: (context, index) => const SizedBox(width: 12),
    //     itemCount: Constants.latestTransactionItems.length,
    //   ),
    // );
  }
}

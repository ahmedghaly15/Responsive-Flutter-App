import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/widgets/primary_button.dart';
import 'package:responsive_adaptive/widgets/text_field_and_its_title.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Row(
          children: <Widget>[
            Expanded(
              child: TextFieldAndItsTitle(
                textFieldTitle: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TextFieldAndItsTitle(
                textFieldTitle: 'Customer Email',
                hintText: 'Type Customer Email',
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Row(
          children: <Widget>[
            Expanded(
              child: TextFieldAndItsTitle(
                textFieldTitle: 'Item name',
                hintText: 'Type Item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TextFieldAndItsTitle(
                textFieldTitle: 'Item mount',
                hintText: 'USD',
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: <Widget>[
            Expanded(
              child: PrimaryButton(
                buttonText: 'Add more details',
                onPressed: () {},
                backgroundColor: Colors.white,
                textColor: const Color(0xff4EB7F2),
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: PrimaryButton(
                buttonText: 'Send Money',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}

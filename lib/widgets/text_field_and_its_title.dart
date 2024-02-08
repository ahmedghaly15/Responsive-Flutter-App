import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/utils/app_styles.dart';
import 'package:responsive_adaptive/core/widgets/custom_text_field.dart';

class TextFieldAndItsTitle extends StatelessWidget {
  const TextFieldAndItsTitle({
    super.key,
    required this.textFieldTitle,
    required this.hintText,
  });

  final String textFieldTitle;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          textFieldTitle,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 12),
        CustomTextField(hint: hintText),
      ],
    );
  }
}

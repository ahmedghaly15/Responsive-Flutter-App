import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/utils/app_styles.dart';
import 'package:responsive_adaptive/widgets/custom_dots_indicators.dart';
import 'package:responsive_adaptive/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    _pageController = PageController();

    _pageController.addListener(() {
      _currentPageIndex = _pageController.page!.round();

      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'My Cards',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(height: 20),
        MyCardsPageView(pageController: _pageController),
        const SizedBox(height: 20),
        CustomDotsIndicators(currentPageIndex: _currentPageIndex),
      ],
    );
  }
}

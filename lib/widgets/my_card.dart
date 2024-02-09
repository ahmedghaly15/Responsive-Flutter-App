import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive/core/utils/app_assets.dart';
import 'package:responsive_adaptive/core/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppAssets.imagesCardBackground),
          ),
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            ListTile(
              // Horizontal padding of ListTile
              contentPadding: const EdgeInsets.only(
                left: 31,
                right: 42,
                top: 16,
              ),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(context).copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context).copyWith(
                  color: Colors.white,
                ),
              ),
              trailing: SvgPicture.asset(
                AppAssets.imagesGallery,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 27),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_flutter/core/helpers/text_style_helper.dart';

class TempInfoCard extends StatelessWidget {
  final String iconAsset;
  final String title;
  final double? temp;

  const TempInfoCard({
    Key? key,
    required this.iconAsset,
    required this.title,
    required this.temp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          iconAsset,
          scale: 8,
        ),
        SizedBox(width: 5.r),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: ts(CustomTextStyles.s13w500),
            ),
            SizedBox(height: 3.r),
            Text(
              "${temp!.round()} °C",
              style: ts(CustomTextStyles.s12w500).copyWith(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_flutter/core/helpers/text_style_helper.dart';

class TimeInfoCard extends StatelessWidget {
  final String iconAsset;
  final String title;
  final DateTime time;

  const TimeInfoCard({
    Key? key,
    required this.iconAsset,
    required this.title,
    required this.time,
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
              DateFormat('HH:mm').format(time),
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ],
    );
  }
}

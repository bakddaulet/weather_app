import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_flutter/core/helpers/text_style_helper.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({super.key, required this.temperature, required this.weather, required this.date});
  final double? temperature;
  final String? weather;
  final DateTime? date;

  @override
  Widget build(BuildContext context) {
   return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        if(temperature != null)  Text(
            '${temperature!.round()}°C',
            style: ts(CustomTextStyles.s50w500),
          ),
        if(weather != null)  Text(
            weather!.toUpperCase(),
            style: ts(CustomTextStyles.s26w500),
          ),
          SizedBox(height: 5.r),
        if(date != null)  Text(
            DateFormat('EEEE dd •').add_jm().format(date!),
            style: ts(CustomTextStyles.s13w500),
          ),
        ],
      ),
    );

    ;
  }
}

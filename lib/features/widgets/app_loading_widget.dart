import 'package:flutter/material.dart';
import 'package:weather_app_flutter/core/helpers/colors_helpers.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),

      ),
    );
  }
}
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BgLight extends StatelessWidget {
  const BgLight({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
        alignment: const AlignmentDirectional(3, -0.3),
        child: Container(
          height: 300.r,
          width: 300.r,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Colors.deepPurple),
        ),
      ),
      Align(
        alignment: const AlignmentDirectional(-3, -0.3),
        child: Container(
          height: 300.r,
          width: 300.r,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xFF673AB7)),
        ),
      ),
      Align(
        alignment: const AlignmentDirectional(0, -1.2),
        child: Container(
          height: 300.r,
          width: 600.r,
          decoration: const BoxDecoration(color: Color(0xFFFFAB40)),
        ),
      ),
      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 100.0.r, sigmaY: 100.0.r),
        child: Container(
          decoration: const BoxDecoration(color: Colors.transparent),
        ),
      ), child
    ]);
  }
}

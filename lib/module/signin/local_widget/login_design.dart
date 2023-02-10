import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginDesign extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 254, 25, 25)
      ..style = PaintingStyle.fill;
    Path path = Path()
      ..moveTo(
        73.h,
        0,
      )
      ..lineTo(
        283.w,
        257.h,
      )
      ..lineTo(
        365.w,
        150.h,
      )
      ..lineTo(
        365.w,
        0,
      )
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

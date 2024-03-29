import 'package:flutter/material.dart';

class SpeechBubblePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    const double radius = 10.0;

    final Path path = Path()
      ..moveTo(radius, size.height) // 왼쪽 하단
      ..lineTo(size.width - radius, size.height) // 오른쪽 하단
      ..quadraticBezierTo(size.width, size.height, size.width, size.height - radius) // 오른쪽 하단에서 오른쪽 상단으로 둥글게
      ..lineTo(size.width, radius) // 오른쪽 상단
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0) // 오른쪽 상단에서 왼쪽 상단으로 둥글게
      ..lineTo(radius, 0) // 왼쪽 상단
      ..quadraticBezierTo(0, 0, 0, radius) // 왼쪽 상단에서 왼쪽 하단으로 둥글게
      ..lineTo(0, size.height - radius) // 왼쪽 하단에서 말꼬리 시작
      ..lineTo(-20, size.height); // 말꼬리

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
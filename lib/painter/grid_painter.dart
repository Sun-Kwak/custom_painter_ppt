import 'package:flutter/material.dart';

class GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..color = Colors.black.withOpacity(1.0)
      ..strokeWidth = 0.3
      ..style = PaintingStyle.stroke;

    const double cellWidth = 10.0; // Fixed cell width
    const double cellHeight = 10.0; // Fixed cell height

    for (double i = 0; i <= size.width; i += cellWidth) {
      canvas.drawLine(Offset(i, 0), Offset(i, size.height), paint);
    }

    for (double i = 0; i <= size.height; i += cellHeight) {
      canvas.drawLine(Offset(0, i), Offset(size.width, i), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

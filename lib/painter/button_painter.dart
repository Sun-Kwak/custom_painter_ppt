import 'package:flutter/material.dart';

class ButtonPainter extends CustomPainter {
  final Color color;
  final double t;

  ButtonPainter({required this.color, required this.t});

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromPoints(Offset(0, 0), Offset(size.width, size.height));
    final radius = Radius.circular(32);

    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, radius),
      Paint()
        ..color = color
        ..strokeWidth = 1
        ..style = PaintingStyle.fill,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, radius),
      Paint()
        ..color = Colors.black.withOpacity(0.2)  // Shadow color
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, 5.0),  // Shadow blur radius
    );

    TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: 'START',
        style: TextStyle(
          color: Colors.blueGrey.withOpacity((0.3 + t).clamp(0.0, 1.0)),
          fontSize: 16.0,
          fontFamily: 'SebangGothic',
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);

    textPainter.paint(canvas, Offset((size.width - textPainter.width) / 2, (size.height - textPainter.height) / 2));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


// // Layer 1 - Background Fill
// Paint paint_fill_0 = Paint()
//   ..color = color.withOpacity((0.3 + t).clamp(0.0, 1.0))
//   ..style = PaintingStyle.fill
//   ..strokeWidth = size.width * 0.00
//   ..strokeCap = StrokeCap.butt
//   ..strokeJoin = StrokeJoin.miter;
//
// Path path_0 = Path();
// path_0.moveTo(size.width * 0.0408333, 0);
// path_0.cubicTo(size.width * -0.0006250, size.height * 0.0021429, 0,
//     size.height * 0.0535714, 0, size.height * 0.0714286);
// path_0.cubicTo(0, size.height * 0.0892857, size.width * -0.0010417,
//     size.height * 0.1421429, size.width * 0.0408333, size.height * 0.1428571);
// path_0.cubicTo(size.width * 0.1233333, size.height * 0.1428571,
//     size.width * 0.2083333, size.height * 0.1428571, size.width * 0.2908333,
//     size.height * 0.1428571);
// path_0.quadraticBezierTo(size.width * 0.3337500, size.height * 0.1407143,
//     size.width * 0.3325000, size.height * 0.0714286);
// path_0.quadraticBezierTo(size.width * 0.3333333, size.height * 0.0007143,
//     size.width * 0.2908333, 0);
// path_0.cubicTo(size.width * 0.2083333, 0, size.width * 0.1250000,
//     size.height * 0.0014286, size.width * 0.0408333, 0);
// path_0.close();
//
// canvas.drawPath(path_0, paint_fill_0);
//
// // Layer 2 - Border Stroke
// Paint paint_stroke_0 = Paint()
//   ..color = Colors.blueGrey.withOpacity((0.3 + t).clamp(0.0, 1.0))
//   ..style = PaintingStyle.stroke
//   ..strokeWidth = 1
//   ..strokeCap = StrokeCap.butt
//   ..strokeJoin = StrokeJoin.miter;
//
// canvas.drawPath(path_0, paint_stroke_0);
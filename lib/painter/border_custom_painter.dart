import 'package:flutter/material.dart';

class BorderCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paintFill0 = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.fill
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(120, 0);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, 50);
    path_0.lineTo(200, 50);
    path_0.lineTo(200, 0);
    path_0.lineTo(180, 0);

    canvas.drawPath(path_0, paintFill0);

    Paint paintStroke0 = Paint()
      ..color = Colors.blueGrey.withOpacity(0.8)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);

    TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: '참석자',
        style: TextStyle(color: Colors.blueGrey.withOpacity(0.8), fontSize: 12,fontFamily: 'SebangGothic'),
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();
    textPainter.paint(canvas, const Offset(135, -5));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

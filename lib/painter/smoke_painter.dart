

//Copy this CustomPainter code to the Bottom of the File
import 'package:flutter/material.dart';

class SmokePainter extends CustomPainter {
  final double animationValue;
  final double t;


  SmokePainter({required this.animationValue, required this.t});

  @override
  void paint(Canvas canvas, Size size) {

    Path path_10 = Path();
    path_10.moveTo(791.808, 246.612);
    path_10.cubicTo(
        791.786 + (animationValue * 20),
        246.65 + (animationValue * 10),
        791.733 + (animationValue * 20),
        246.658 + (animationValue * 10),
        791.697 + (animationValue * 20),
        246.634 + (animationValue * 10));
    path_10.cubicTo(
        783.693 + (animationValue * 20 * 1.1),
        241.273 + (animationValue * 10),
        782.431 + (animationValue * 20 * 1.1),
        237.397 + (animationValue * 10),
        782.431 + (animationValue * 20 * 1.1),
        234.677 + (animationValue * 10));
    path_10.cubicTo(
        782.431 + (animationValue * 20 * 1.1),
        211.076 + (animationValue * 10 * 1.1),
        806.916 + (animationValue * 20 * 1.1),
        206.849 + (animationValue * 10 * 1.1),
        803.771 + (animationValue * 20 * 1.1),
        201.334 + (animationValue * 10 * 1.1));
    path_10.cubicTo(
        797.92 + (animationValue * 20 * 1.2),
        191.075 + (animationValue * 10),
        775.328 + (animationValue * 20 * 1.2),
        201.482 + (animationValue * 10),
        766.426 + (animationValue * 20 * 1.2),
        190.663 + (animationValue * 10));
    path_10.cubicTo(
        759.12 + (animationValue * 20 * 1.5),
        181.784 + (animationValue * 10),
        769.733 + (animationValue * 20 * 1.5),
        169.175 + (animationValue * 10),
        762.425 + (animationValue * 20 * 1.5),
        159.988 + (animationValue * 10));
    path_10.cubicTo(
        754.579 + (animationValue * 20 * 1.5),
        150.123 - (animationValue * 10),
        741.069 + (animationValue * 20 * 1.5),
        145.027 - (animationValue * 10),
        730.415 + (animationValue * 20 * 1.5),
        137.314 - (animationValue * 10));
    path_10.cubicTo(
        713.285 + (animationValue * 20 * 2),
        124.913 - (animationValue * 10),
        708.292 + (animationValue * 20 * 2),
        82.872 - (animationValue * 10),
        742.418 + (animationValue * 20 * 2),
        65.2927 - (animationValue * 10));
    path_10.cubicTo(
        772.999 + (animationValue * 20 * 1.4),
        49.5405 - (animationValue * 10 * 1.3),
        805.747 + (animationValue * 20 * 1.4),
        65.7135 - (animationValue * 10 * 1.3),
        811.773 + (animationValue * 20 * 1.4),
        89.3002 - (animationValue * 10 * 1.3));
    path_10.cubicTo(
        815.901 + (animationValue * 20 * 1.8),
        105.458 + (animationValue * 10),
        810.389 + (animationValue * 20 * 1.8),
        124.773 + (animationValue * 10),
        817.108 + (animationValue * 20 * 1.8),
        142.65 + (animationValue * 10));
    path_10.cubicTo(
        823.49 + (animationValue * 20 * 1.6),
        159.627 + (animationValue * 10),
        845.321 + (animationValue * 20 * 1.6),
        153.228 + (animationValue * 10),
        855.786 + (animationValue * 20 * 1.6),
        170.659 + (animationValue * 10));
    path_10.cubicTo(
        864.08 + (animationValue * 20 * 1.1),
        184.472 + (animationValue * 10),
        862.876 + (animationValue * 20 * 1.1),
        207.11 + (animationValue * 10),
        851.785 + (animationValue * 20 * 1.1),
        217.34 + (animationValue * 10));
    path_10.cubicTo(
        839.766 + (animationValue * 20 * 1.2),
        228.424 + (animationValue * 10),
        826.197 + (animationValue * 20 * 1.2),
        213.881 + (animationValue * 10),
        805.131 + (animationValue * 20 * 1.2),
        224.414 + (animationValue * 10));
    path_10.cubicTo(
        791.881 + (animationValue * 20),
        231.039 + (animationValue * 10),
        793.887 + (animationValue * 20),
        243.065 + (animationValue * 10),
        791.808 + (animationValue * 20),
        246.612 + (animationValue * 10));
    path_10.close();

    Paint paint_10_fill = Paint()..style = PaintingStyle.fill;
    paint_10_fill.color =
        Color(0xffE8E8E8).withOpacity((0.3 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_10, paint_10_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

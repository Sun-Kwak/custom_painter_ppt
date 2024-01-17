

//Copy this CustomPainter code to the Bottom of the File
import 'package:flutter/material.dart';

class SnowmanPainter extends CustomPainter {
  final double t;
  final Color color;


  SnowmanPainter({ required this.t,required this.color});

  @override
  void paint(Canvas canvas, Size size) {



    Path path_39 = Path();
    path_39.moveTo(849.314, 461.181);
    path_39.cubicTo(849.314, 471.122, 841.255, 479.181, 831.314, 479.181);
    path_39.cubicTo(821.373, 479.181, 813.314, 471.122, 813.314, 461.181);
    path_39.cubicTo(813.314, 451.24, 821.373, 443.181, 831.314, 443.181);
    path_39.cubicTo(841.255, 443.181, 849.314, 451.24, 849.314, 461.181);
    path_39.close();

    Paint paint_39_fill = Paint()..style = PaintingStyle.fill;
    paint_39_fill.color =
        color.withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_39, paint_39_fill);

    Path path_40 = Path();
    path_40.moveTo(879.314, 521.931);
    path_40.cubicTo(879.314, 548.855, 857.488, 570.681, 830.564, 570.681);
    path_40.cubicTo(803.64, 570.681, 781.814, 548.855, 781.814, 521.931);
    path_40.cubicTo(781.814, 495.007, 803.64, 473.181, 830.564, 473.181);
    path_40.cubicTo(857.488, 473.181, 879.314, 495.007, 879.314, 521.931);
    path_40.close();

    Paint paint_40_fill = Paint()..style = PaintingStyle.fill;
    paint_40_fill.color =
        color.withOpacity((0.3 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_40, paint_40_fill);

    Path path_41 = Path();
    path_41.moveTo(832.902, 459.681);
    path_41.lineTo(860.652, 459.681);
    path_41.cubicTo(861.066, 459.681, 861.402, 460.017, 861.402, 460.431);
    path_41.lineTo(861.402, 460.574);
    path_41.cubicTo(861.402, 460.928, 861.155, 461.234, 860.808, 461.308);
    path_41.lineTo(832.814, 467.27);
    path_41.lineTo(832.902, 459.681);
    path_41.close();

    Paint paint_41_fill = Paint()..style = PaintingStyle.fill;
    paint_41_fill.color =
        Color(0xffFFC000).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_41, paint_41_fill);

    Path path_42 = Path();
    path_42.moveTo(829.814, 456.681);
    path_42.cubicTo(829.814, 457.509, 829.142, 458.181, 828.314, 458.181);
    path_42.cubicTo(827.485, 458.181, 826.814, 457.509, 826.814, 456.681);
    path_42.cubicTo(826.814, 455.853, 827.485, 455.181, 828.314, 455.181);
    path_42.cubicTo(829.142, 455.181, 829.814, 455.853, 829.814, 456.681);
    path_42.close();

    Paint paint_42_fill = Paint()..style = PaintingStyle.fill;
    paint_42_fill.color =
        Color(0xff505050).withOpacity((0.2 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_42, paint_42_fill);

    Path path_43 = Path();
    path_43.moveTo(838.814, 456.681);
    path_43.cubicTo(838.814, 457.509, 838.142, 458.181, 837.314, 458.181);
    path_43.cubicTo(836.485, 458.181, 835.814, 457.509, 835.814, 456.681);
    path_43.cubicTo(835.814, 455.853, 836.485, 455.181, 837.314, 455.181);
    path_43.cubicTo(838.142, 455.181, 838.814, 455.853, 838.814, 456.681);
    path_43.close();

    Paint paint_43_fill = Paint()..style = PaintingStyle.fill;
    paint_43_fill.color =
        Color(0xff505050).withOpacity((0.4 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_43, paint_43_fill);

    Path path_44 = Path();
    path_44.moveTo(886.815, 471.681);
    path_44.lineTo(876.935, 471.681);
    path_44.lineTo(881.125, 467.492);
    path_44.cubicTo(881.711, 466.906, 881.711, 465.956, 881.125, 465.371);
    path_44.cubicTo(880.539, 464.785, 879.59, 464.785, 879.004, 465.371);
    path_44.lineTo(868.815, 475.56);
    path_44.lineTo(868.815, 468.681);
    path_44.cubicTo(868.815, 467.853, 868.143, 467.181, 867.315, 467.181);
    path_44.cubicTo(866.487, 467.181, 865.815, 467.853, 865.815, 468.681);
    path_44.lineTo(865.815, 478.56);
    path_44.lineTo(854.254, 490.121);
    path_44.cubicTo(853.668, 490.706, 853.668, 491.656, 854.254, 492.242);
    path_44.cubicTo(854.547, 492.535, 854.93, 492.681, 855.315, 492.681);
    path_44.cubicTo(855.698, 492.681, 856.082, 492.535, 856.375, 492.242);
    path_44.lineTo(874.115, 474.501);
    path_44.cubicTo(874.325, 474.612, 874.56, 474.681, 874.815, 474.681);
    path_44.lineTo(886.815, 474.681);
    path_44.cubicTo(887.643, 474.681, 888.315, 474.009, 888.315, 473.181);
    path_44.cubicTo(888.315, 472.353, 887.643, 471.681, 886.815, 471.681);
    path_44.close();

    Paint paint_44_fill = Paint()..style = PaintingStyle.fill;
    paint_44_fill.color =
        Color(0xff505050).withOpacity((0.3 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_44, paint_44_fill);

    Path path_45 = Path();
    path_45.moveTo(809.875, 490.121);
    path_45.lineTo(798.685, 478.93);
    path_45.lineTo(801.117, 474.675);
    path_45.cubicTo(801.527, 473.956, 801.278, 473.039, 800.558, 472.628);
    path_45.cubicTo(799.84, 472.217, 798.923, 472.467, 798.512, 473.186);
    path_45.lineTo(796.486, 476.732);
    path_45.lineTo(785.125, 465.371);
    path_45.cubicTo(784.539, 464.785, 783.59, 464.785, 783.004, 465.371);
    path_45.cubicTo(782.418, 465.956, 782.418, 466.906, 783.004, 467.492);
    path_45.lineTo(787.193, 471.681);
    path_45.lineTo(777.315, 471.681);
    path_45.cubicTo(776.487, 471.681, 775.815, 472.353, 775.815, 473.181);
    path_45.cubicTo(775.815, 474.009, 776.487, 474.681, 777.315, 474.681);
    path_45.lineTo(790.193, 474.681);
    path_45.lineTo(807.754, 492.242);
    path_45.cubicTo(808.047, 492.535, 808.43, 492.681, 808.815, 492.681);
    path_45.cubicTo(809.198, 492.681, 809.582, 492.535, 809.875, 492.242);
    path_45.cubicTo(810.461, 491.656, 810.461, 490.706, 809.875, 490.121);
    path_45.close();
    path_45.moveTo(790.013, 474.501);
    path_45.lineTo(790.055, 474.543);
    path_45.cubicTo(790.005, 474.529, 789.985, 474.515, 790.013, 474.501);
    path_45.close();

    Paint paint_45_fill = Paint()..style = PaintingStyle.fill;
    paint_45_fill.color =
        Color(0xff2F2F2F).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_45, paint_45_fill);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {

    return true;
  }
}
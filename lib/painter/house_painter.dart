import 'package:flutter/material.dart';

class HouseCustomPainter extends CustomPainter {
  final double t;
  HouseCustomPainter({required this.t});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(796.951, 363.115);
    path_0.lineTo(789.159, 357.18);
    path_0.cubicTo(787.305, 355.768, 787.385, 352.905, 789.364, 351.675);
    path_0.cubicTo(792.182, 349.924, 794.193, 346.842, 794.229, 343.003);
    path_0.cubicTo(794.26, 339.674, 792.628, 336.548, 789.98, 334.531);
    path_0.lineTo(782.554, 328.875);
    path_0.cubicTo(780.638, 327.415, 780.863, 324.496, 782.953, 323.297);
    path_0.cubicTo(785.966, 321.569, 788.141, 318.358, 788.141, 314.323);
    path_0.cubicTo(788.141, 311.091, 786.632, 308.044, 784.06, 306.086);
    path_0.lineTo(774.93, 299.001);
    path_0.cubicTo(773.127, 297.602, 773.25, 294.825, 775.187, 293.618);
    path_0.cubicTo(777.989, 291.871, 781.128, 289.192, 781.182, 285.93);
    path_0.cubicTo(781.239, 282.564, 779.58, 279.397, 776.901, 277.357);
    path_0.lineTo(755.587, 261.121);
    path_0.cubicTo(753.94, 259.867, 751.658, 259.867, 750.011, 261.121);
    path_0.lineTo(728.697, 277.357);
    path_0.cubicTo(726.018, 279.397, 724.359, 282.564, 724.416, 285.93);
    path_0.cubicTo(724.47, 289.177, 727.583, 291.849, 730.377, 293.596);
    path_0.cubicTo(732.326, 294.815, 732.485, 297.591, 730.668, 299.001);
    path_0.lineTo(721.538, 306.086);
    path_0.cubicTo(718.966, 308.044, 717.457, 311.091, 717.457, 314.323);
    path_0.cubicTo(717.457, 318.357, 719.631, 321.569, 722.645, 323.297);
    path_0.cubicTo(724.735, 324.496, 724.96, 327.415, 723.044, 328.875);
    path_0.lineTo(715.619, 334.53);
    path_0.cubicTo(712.971, 336.547, 711.339, 339.674, 711.37, 343.002);
    path_0.cubicTo(711.406, 346.842, 713.416, 349.924, 716.235, 351.675);
    path_0.cubicTo(718.214, 352.904, 718.295, 355.767, 716.441, 357.178);
    path_0.lineTo(708.644, 363.117);
    path_0.cubicTo(706.053, 365.09, 704.436, 368.132, 704.412, 371.388);
    path_0.cubicTo(704.37, 377.251, 708.914, 381.397, 713.978, 381.811);
    path_0.lineTo(791.618, 381.811);
    path_0.cubicTo(796.689, 381.396, 801.24, 377.237, 801.182, 371.359);
    path_0.cubicTo(801.154, 368.113, 799.536, 365.084, 796.951, 363.115);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color =
        const Color(0xff737373).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(548.568, 423.184);
    path_1.cubicTo(548.637, 423.184, 548.664, 423.1, 548.61, 423.055);
    path_1.cubicTo(546.338, 421.158, 546.495, 417.523, 549.042, 415.942);
    path_1.cubicTo(552.686, 413.677, 555.302, 409.723, 555.436, 404.792);
    path_1.cubicTo(555.558, 400.303, 553.361, 396.061, 549.788, 393.34);
    path_1.lineTo(540.083, 385.948);
    path_1.cubicTo(537.591, 384.049, 537.807, 380.194, 540.536, 378.651);
    path_1.cubicTo(544.538, 376.388, 547.433, 372.143, 547.433, 366.804);
    path_1.cubicTo(547.433, 362.552, 545.448, 358.544, 542.066, 355.966);
    path_1.lineTo(530.055, 346.646);
    path_1.cubicTo(527.683, 344.806, 527.845, 341.153, 530.393, 339.565);
    path_1.cubicTo(534.079, 337.267, 538.208, 333.741, 538.281, 329.451);
    path_1.cubicTo(538.355, 325.023, 536.172, 320.857, 532.649, 318.174);
    path_1.lineTo(504.609, 296.815);
    path_1.cubicTo(502.443, 295.165, 499.441, 295.165, 497.274, 296.815);
    path_1.lineTo(469.234, 318.175);
    path_1.cubicTo(465.711, 320.858, 463.527, 325.024, 463.602, 329.452);
    path_1.cubicTo(463.675, 333.74, 467.798, 337.263, 471.483, 339.561);
    path_1.cubicTo(474.034, 341.152, 474.203, 344.804, 471.828, 346.647);
    path_1.lineTo(459.817, 355.967);
    path_1.cubicTo(456.435, 358.544, 454.449, 362.552, 454.449, 366.805);
    path_1.cubicTo(454.449, 372.144, 457.345, 376.388, 461.347, 378.651);
    path_1.cubicTo(464.075, 380.194, 464.292, 384.049, 461.798, 385.948);
    path_1.lineTo(452.095, 393.339);
    path_1.cubicTo(448.522, 396.061, 446.325, 400.303, 446.447, 404.793);
    path_1.cubicTo(446.581, 409.723, 449.198, 413.679, 452.842, 415.943);
    path_1.cubicTo(455.388, 417.524, 455.545, 421.158, 453.273, 423.055);
    path_1.cubicTo(453.22, 423.1, 453.246, 423.184, 453.316, 423.184);
    path_1.lineTo(548.568, 423.184);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color =
        const Color(0xff737373).withOpacity((0.2 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(607.559, 373.254);
    path_2.lineTo(599.046, 366.769);
    path_2.cubicTo(597.02, 365.226, 597.107, 362.098, 599.271, 360.755);
    path_2.cubicTo(602.35, 358.841, 604.546, 355.474, 604.585, 351.28);
    path_2.cubicTo(604.62, 347.644, 602.836, 344.228, 599.943, 342.024);
    path_2.lineTo(591.831, 335.845);
    path_2.cubicTo(589.737, 334.249, 589.983, 331.06, 592.266, 329.75);
    path_2.cubicTo(595.559, 327.862, 597.934, 324.353, 597.934, 319.946);
    path_2.cubicTo(597.934, 316.414, 596.286, 313.086, 593.476, 310.946);
    path_2.lineTo(583.501, 303.206);
    path_2.cubicTo(581.531, 301.678, 581.666, 298.644, 583.781, 297.326);
    path_2.cubicTo(586.843, 295.417, 590.272, 292.489, 590.332, 288.926);
    path_2.cubicTo(590.394, 285.248, 588.581, 281.788, 585.654, 279.56);
    path_2.lineTo(562.367, 261.821);
    path_2.cubicTo(560.568, 260.45, 558.075, 260.45, 556.276, 261.821);
    path_2.lineTo(532.989, 279.56);
    path_2.cubicTo(530.063, 281.788, 528.248, 285.248, 528.311, 288.926);
    path_2.cubicTo(528.371, 292.474, 531.771, 295.392, 534.823, 297.301);
    path_2.cubicTo(536.953, 298.633, 537.126, 301.666, 535.142, 303.206);
    path_2.lineTo(525.167, 310.946);
    path_2.cubicTo(522.357, 313.086, 520.709, 316.415, 520.709, 319.946);
    path_2.cubicTo(520.709, 324.353, 523.085, 327.862, 526.377, 329.75);
    path_2.cubicTo(528.661, 331.06, 528.907, 334.249, 526.813, 335.845);
    path_2.lineTo(518.701, 342.023);
    path_2.cubicTo(515.808, 344.227, 514.025, 347.643, 514.059, 351.28);
    path_2.cubicTo(514.099, 355.474, 516.295, 358.843, 519.375, 360.755);
    path_2.cubicTo(521.537, 362.099, 521.625, 365.226, 519.599, 366.768);
    path_2.lineTo(511.081, 373.256);
    path_2.cubicTo(508.251, 375.412, 506.484, 378.734, 506.458, 382.293);
    path_2.cubicTo(506.411, 388.698, 511.377, 393.228, 516.909, 393.68);
    path_2.lineTo(601.735, 393.68);
    path_2.cubicTo(607.276, 393.227, 612.248, 388.684, 612.185, 382.262);
    path_2.cubicTo(612.151, 378.714, 610.383, 375.404, 607.559, 373.254);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color =
        const Color(0xff505050).withOpacity((0.15 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(753.451, 328.615);
    path_3.lineTo(745.659, 322.68);
    path_3.cubicTo(743.805, 321.268, 743.885, 318.405, 745.864, 317.175);
    path_3.cubicTo(748.682, 315.424, 750.693, 312.342, 750.729, 308.503);
    path_3.cubicTo(750.76, 305.174, 749.128, 302.048, 746.48, 300.031);
    path_3.lineTo(739.054, 294.375);
    path_3.cubicTo(737.138, 292.915, 737.363, 289.996, 739.453, 288.797);
    path_3.cubicTo(742.466, 287.069, 744.641, 283.858, 744.641, 279.823);
    path_3.cubicTo(744.641, 276.591, 743.132, 273.544, 740.56, 271.586);
    path_3.lineTo(731.43, 264.501);
    path_3.cubicTo(729.627, 263.102, 729.75, 260.325, 731.687, 259.118);
    path_3.cubicTo(734.489, 257.371, 737.628, 254.692, 737.682, 251.43);
    path_3.cubicTo(737.739, 248.064, 736.08, 244.897, 733.401, 242.857);
    path_3.lineTo(712.087, 226.621);
    path_3.cubicTo(710.44, 225.367, 708.158, 225.367, 706.511, 226.621);
    path_3.lineTo(685.197, 242.857);
    path_3.cubicTo(682.518, 244.897, 680.859, 248.064, 680.916, 251.43);
    path_3.cubicTo(680.97, 254.678, 684.083, 257.349, 686.877, 259.096);
    path_3.cubicTo(688.826, 260.315, 688.985, 263.091, 687.168, 264.501);
    path_3.lineTo(678.038, 271.586);
    path_3.cubicTo(675.466, 273.544, 673.957, 276.591, 673.957, 279.823);
    path_3.cubicTo(673.957, 283.857, 676.131, 287.069, 679.145, 288.797);
    path_3.cubicTo(681.235, 289.996, 681.46, 292.915, 679.544, 294.375);
    path_3.lineTo(672.119, 300.03);
    path_3.cubicTo(669.471, 302.047, 667.839, 305.174, 667.87, 308.502);
    path_3.cubicTo(667.906, 312.342, 669.916, 315.424, 672.735, 317.175);
    path_3.cubicTo(674.714, 318.404, 674.795, 321.267, 672.941, 322.678);
    path_3.lineTo(665.144, 328.617);
    path_3.cubicTo(662.553, 330.59, 660.936, 333.632, 660.912, 336.888);
    path_3.cubicTo(660.87, 342.751, 665.414, 346.897, 670.478, 347.311);
    path_3.lineTo(748.118, 347.311);
    path_3.cubicTo(753.189, 346.896, 757.74, 342.737, 757.682, 336.859);
    path_3.cubicTo(757.654, 333.613, 756.036, 330.584, 753.451, 328.615);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color =
        const Color(0xffD0D0D0).withOpacity((0.2 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(887.993, 475.839);
    path_4.lineTo(876.597, 467.159);
    path_4.cubicTo(873.886, 465.093, 874.003, 460.906, 876.898, 459.108);
    path_4.cubicTo(881.021, 456.547, 883.959, 452.04, 884.012, 446.425);
    path_4.cubicTo(884.058, 441.557, 881.672, 436.985, 877.799, 434.035);
    path_4.lineTo(866.94, 425.764);
    path_4.cubicTo(864.137, 423.63, 864.467, 419.36, 867.524, 417.607);
    path_4.cubicTo(871.931, 415.08, 875.111, 410.383, 875.111, 404.484);
    path_4.cubicTo(875.111, 399.757, 872.904, 395.301, 869.144, 392.437);
    path_4.lineTo(855.792, 382.076);
    path_4.cubicTo(853.155, 380.03, 853.335, 375.97, 856.167, 374.204);
    path_4.cubicTo(860.265, 371.65, 864.855, 367.73, 864.935, 362.961);
    path_4.cubicTo(865.019, 358.039, 862.592, 353.408, 858.674, 350.425);
    path_4.lineTo(827.504, 326.681);
    path_4.cubicTo(825.096, 324.846, 821.758, 324.846, 819.35, 326.681);
    path_4.lineTo(788.178, 350.425);
    path_4.cubicTo(784.262, 353.408, 781.834, 358.039, 781.917, 362.961);
    path_4.cubicTo(781.997, 367.711, 786.549, 371.617, 790.635, 374.172);
    path_4.cubicTo(793.485, 375.956, 793.718, 380.015, 791.061, 382.076);
    path_4.lineTo(777.709, 392.437);
    path_4.cubicTo(773.948, 395.301, 771.742, 399.757, 771.742, 404.484);
    path_4.cubicTo(771.742, 410.383, 774.922, 415.08, 779.329, 417.607);
    path_4.cubicTo(782.385, 419.36, 782.715, 423.63, 779.912, 425.765);
    path_4.lineTo(769.054, 434.035);
    path_4.cubicTo(765.182, 436.985, 762.794, 441.558, 762.84, 446.426);
    path_4.cubicTo(762.893, 452.041, 765.833, 456.548, 769.956, 459.109);
    path_4.cubicTo(772.85, 460.906, 772.967, 465.093, 770.256, 467.158);
    path_4.lineTo(758.854, 475.843);
    path_4.cubicTo(755.065, 478.729, 752.701, 483.176, 752.666, 487.939);
    path_4.cubicTo(752.603, 496.513, 759.249, 502.576, 766.654, 503.182);
    path_4.lineTo(880.197, 503.182);
    path_4.cubicTo(887.614, 502.576, 894.27, 496.493, 894.185, 487.898);
    path_4.cubicTo(894.139, 483.147, 891.772, 478.717, 887.993, 475.839);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color =
        const Color(0xff737373).withOpacity((0.4 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(774.17, 254.715);
    path_5.lineTo(804.17, 254.715);
    path_5.lineTo(804.17, 273.971);
    path_5.lineTo(774.17, 273.971);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff2F2F2F).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(774.314, 269.191);
    path_6.cubicTo(774.384, 268.945, 775.772, 264.424, 780.314, 263.191);
    path_6.cubicTo(782.289, 262.654, 784.367, 262.874, 786.186, 263.732);
    path_6.cubicTo(788.262, 264.71, 790.58, 264.944, 792.864, 264.713);
    path_6.cubicTo(793.167, 264.682, 793.484, 264.672, 793.814, 264.691);
    path_6.cubicTo(796.384, 264.832, 798.711, 266.591, 799.814, 269.191);
    path_6.cubicTo(799.814, 269.191, 799.364, 274.02, 786.914, 274.02);
    path_6.cubicTo(774.464, 274.02, 774.314, 269.191, 774.314, 269.191);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.3 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(813.459, 417.785);
    path_7.lineTo(778.67, 417.785);
    path_7.lineTo(778.67, 275.7);
    path_7.lineTo(789.167, 269.181);
    path_7.lineTo(807.314, 269.181);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color =
        const Color(0xffE4E4E4).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(789.17, 417.785);
    path_8.lineTo(763.814, 417.785);
    path_8.lineTo(771.314, 269.181);
    path_8.lineTo(789.17, 269.181);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color =
        const Color(0xffD0D0D0).withOpacity((0.15 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(807.315, 283.431);
    path_9.lineTo(807.315, 281.931);
    path_9.lineTo(771.315, 281.931);
    path_9.lineTo(771.315, 283.431);
    path_9.lineTo(779.565, 283.431);
    path_9.lineTo(779.565, 289.431);
    path_9.lineTo(771.315, 289.431);
    path_9.lineTo(771.315, 290.931);
    path_9.lineTo(797.565, 290.931);
    path_9.lineTo(797.565, 296.931);
    path_9.lineTo(771.315, 296.931);
    path_9.lineTo(771.315, 298.431);
    path_9.lineTo(783.86, 298.431);
    path_9.lineTo(783.86, 304.431);
    path_9.lineTo(771.315, 304.431);
    path_9.lineTo(771.315, 305.931);
    path_9.lineTo(807.315, 305.931);
    path_9.lineTo(807.315, 304.431);
    path_9.lineTo(785.36, 304.431);
    path_9.lineTo(785.36, 298.431);
    path_9.lineTo(807.315, 298.431);
    path_9.lineTo(807.315, 296.931);
    path_9.lineTo(799.065, 296.931);
    path_9.lineTo(799.065, 290.931);
    path_9.lineTo(807.315, 290.931);
    path_9.lineTo(807.315, 289.431);
    path_9.lineTo(781.065, 289.431);
    path_9.lineTo(781.065, 283.431);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color =
        const Color(0xffF2F2F2).withOpacity((0.4 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_9, paint9Fill);

    Path path_11 = Path();
    path_11.moveTo(582.314, 421.431);
    path_11.lineTo(826.814, 421.431);
    path_11.lineTo(826.814, 518.181);
    path_11.lineTo(582.314, 518.181);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color =
        const Color(0xff505050).withOpacity((0.2 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(751.814, 450.681);
    path_12.lineTo(774.314, 450.681);
    path_12.lineTo(774.314, 473.181);
    path_12.lineTo(751.814, 473.181);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color =
        const Color(0xffFFC000).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(751.814, 480.681);
    path_13.lineTo(774.314, 480.681);
    path_13.lineTo(774.314, 503.181);
    path_13.lineTo(751.814, 503.181);
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color =
        const Color(0xffFFC000).withOpacity((0.05 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(643.814, 450.681);
    path_14.lineTo(666.314, 450.681);
    path_14.lineTo(666.314, 473.181);
    path_14.lineTo(643.814, 473.181);
    path_14.close();

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color =
        const Color(0xff737373).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_14, paint14Fill);

    Path path_15 = Path();
    path_15.moveTo(643.814, 480.681);
    path_15.lineTo(666.314, 480.681);
    path_15.lineTo(666.314, 503.181);
    path_15.lineTo(643.814, 503.181);
    path_15.close();

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color =
        const Color(0xff737373).withOpacity((0.24 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(613.814, 450.681);
    path_16.lineTo(636.314, 450.681);
    path_16.lineTo(636.314, 473.181);
    path_16.lineTo(613.814, 473.181);
    path_16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color =
        const Color(0xff737373).withOpacity((0.17 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(613.814, 480.681);
    path_17.lineTo(636.314, 480.681);
    path_17.lineTo(636.314, 503.181);
    path_17.lineTo(613.814, 503.181);
    path_17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color =
        const Color(0xff737373).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_17, paint17Fill);

    Path path_18 = Path();
    path_18.moveTo(672.314, 450.681);
    path_18.lineTo(694.814, 450.681);
    path_18.lineTo(694.814, 473.181);
    path_18.lineTo(672.314, 473.181);
    path_18.close();

    Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.color =
        const Color(0xff737373).withOpacity((0.15 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_18, paint18Fill);

    Path path_19 = Path();
    path_19.moveTo(672.314, 480.681);
    path_19.lineTo(694.814, 480.681);
    path_19.lineTo(694.814, 503.181);
    path_19.lineTo(672.314, 503.181);
    path_19.close();

    Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color =
        const Color(0xff737373).withOpacity((0.3 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_19, paint19Fill);

    Path path_20 = Path();
    path_20.moveTo(834.314, 503.181);
    path_20.lineTo(576.15, 503.181);
    path_20.lineTo(576.051, 516.55);
    path_20.lineTo(597.315, 528.656);
    path_20.cubicTo(622.852, 530.912, 629.418, 548.287, 661.815, 551.18);
    path_20.cubicTo(704.07, 554.954, 717.131, 530.143, 760.815, 533.18);
    path_20.cubicTo(784.424, 534.822, 803.558, 543.665, 816.758, 551.644);
    path_20.lineTo(833.659, 551.644);
    path_20.lineTo(834.314, 503.181);
    path_20.close();

    Paint paint20Fill = Paint()..style = PaintingStyle.fill;
    paint20Fill.color =
        const Color(0xffE4E4E4).withOpacity((0.4 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_20, paint20Fill);

    Path path_21 = Path();
    path_21.moveTo(709.686, 518.931);
    path_21.lineTo(709.686, 517.431);
    path_21.lineTo(672.936, 517.431);
    path_21.lineTo(672.936, 511.431);
    path_21.lineTo(691.686, 511.431);
    path_21.lineTo(691.686, 509.931);
    path_21.lineTo(601.814, 509.931);
    path_21.lineTo(601.814, 511.431);
    path_21.lineTo(620.463, 511.431);
    path_21.lineTo(620.463, 517.431);
    path_21.lineTo(613.814, 517.431);
    path_21.lineTo(613.814, 518.931);
    path_21.lineTo(637.064, 518.931);
    path_21.lineTo(637.064, 524.931);
    path_21.lineTo(621.314, 524.931);
    path_21.lineTo(621.314, 526.431);
    path_21.lineTo(643.064, 526.431);
    path_21.lineTo(643.064, 532.431);
    path_21.lineTo(633.185, 532.431);
    path_21.lineTo(633.185, 533.931);
    path_21.lineTo(678.185, 533.931);
    path_21.lineTo(678.185, 532.431);
    path_21.lineTo(672.935, 532.431);
    path_21.lineTo(672.935, 526.431);
    path_21.lineTo(708.185, 526.431);
    path_21.lineTo(708.185, 524.931);
    path_21.lineTo(661.165, 524.931);
    path_21.lineTo(661.165, 518.931);
    path_21.lineTo(709.686, 518.931);
    path_21.close();
    path_21.moveTo(621.963, 517.431);
    path_21.lineTo(621.963, 511.431);
    path_21.lineTo(643.065, 511.431);
    path_21.lineTo(643.065, 517.431);
    path_21.lineTo(621.963, 517.431);
    path_21.close();
    path_21.moveTo(638.565, 524.931);
    path_21.lineTo(638.565, 518.931);
    path_21.lineTo(659.666, 518.931);
    path_21.lineTo(659.666, 524.931);
    path_21.lineTo(638.565, 524.931);
    path_21.close();
    path_21.moveTo(671.436, 526.431);
    path_21.lineTo(671.436, 532.431);
    path_21.lineTo(644.565, 532.431);
    path_21.lineTo(644.565, 526.431);
    path_21.lineTo(671.436, 526.431);
    path_21.close();
    path_21.moveTo(644.565, 517.431);
    path_21.lineTo(644.565, 511.431);
    path_21.lineTo(671.436, 511.431);
    path_21.lineTo(671.436, 517.431);
    path_21.lineTo(644.565, 517.431);
    path_21.close();

    Paint paint21Fill = Paint()..style = PaintingStyle.fill;
    paint21Fill.color =
        const Color(0xffF0F0F0).withOpacity((0.3 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_21, paint21Fill);

    Path path_22 = Path();
    path_22.moveTo(786.299, 503.706);
    path_22.cubicTo(786.305, 503.706, 786.311, 503.703, 786.308, 503.699);
    path_22.cubicTo(786.053, 503.327, 776.755, 489.91, 769.071, 489.338);
    path_22.cubicTo(763.037, 488.887, 761.346, 492.98, 754.702, 495.086);
    path_22.cubicTo(737.964, 500.391, 726.996, 480.093, 708.721, 483.59);
    path_22.cubicTo(698.205, 485.602, 699.56, 492.76, 688.604, 495.086);
    path_22.cubicTo(678.438, 497.243, 659.478, 485.872, 648.371, 483.59);
    path_22.cubicTo(639.489, 481.765, 611.02, 483.59, 605.266, 503.697);
    path_22.cubicTo(605.265, 503.701, 605.268, 503.707, 605.273, 503.707);
    path_22.lineTo(786.299, 503.707);
    path_22.close();

    Paint paint22Fill = Paint()..style = PaintingStyle.fill;
    paint22Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.3 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_22, paint22Fill);

    Path path_23 = Path();
    path_23.moveTo(529.214, 323.981);
    path_23.lineTo(462.314, 413.181);
    path_23.lineTo(462.314, 530.6);
    path_23.cubicTo(462.314, 530.604, 462.316, 530.607, 462.32, 530.608);
    path_23.cubicTo(481.785, 534.712, 496.26, 546.148, 523.814, 545.181);
    path_23.cubicTo(553.073, 544.154, 556.487, 531.017, 585.314, 528.681);
    path_23.cubicTo(589.771, 528.32, 593.729, 528.34, 597.314, 528.657);
    path_23.lineTo(597.314, 503.181);
    path_23.lineTo(597.314, 413.181);
    path_23.lineTo(530.414, 323.981);
    path_23.cubicTo(530.114, 323.581, 529.514, 323.581, 529.214, 323.981);
    path_23.close();

    Paint paint23Fill = Paint()..style = PaintingStyle.fill;
    paint23Fill.color =
        const Color(0xff737373).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_23, paint23Fill);

    Path path_24 = Path();
    path_24.moveTo(517.182, 450.681);
    path_24.lineTo(539.682, 450.681);
    path_24.lineTo(539.682, 473.181);
    path_24.lineTo(517.182, 473.181);
    path_24.close();

    Paint paint24Fill = Paint()..style = PaintingStyle.fill;
    paint24Fill.color =
        const Color(0xffFFC000).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_24, paint24Fill);

    Path path_25 = Path();
    path_25.moveTo(546.314, 450.681);
    path_25.lineTo(568.814, 450.681);
    path_25.lineTo(568.814, 473.181);
    path_25.lineTo(546.314, 473.181);
    path_25.close();

    Paint paint25Fill = Paint()..style = PaintingStyle.fill;
    paint25Fill.color =
        const Color(0xffFFC000).withOpacity((0.15 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_25, paint25Fill);

    Path path_26 = Path();
    path_26.moveTo(517.182, 480.681);
    path_26.lineTo(539.682, 480.681);
    path_26.lineTo(539.682, 503.181);
    path_26.lineTo(517.182, 503.181);
    path_26.close();

    Paint paint26Fill = Paint()..style = PaintingStyle.fill;
    paint26Fill.color =
        const Color(0xffFFC000).withOpacity((0.18 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_26, paint26Fill);

    Path path_27 = Path();
    path_27.moveTo(487.814, 450.681);
    path_27.lineTo(510.314, 450.681);
    path_27.lineTo(510.314, 473.181);
    path_27.lineTo(487.814, 473.181);
    path_27.close();

    Paint paint27Fill = Paint()..style = PaintingStyle.fill;
    paint27Fill.color =
        const Color(0xffFFC000).withOpacity((0.2 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_27, paint27Fill);

    Path path_28 = Path();
    path_28.moveTo(487.814, 480.681);
    path_28.lineTo(510.314, 480.681);
    path_28.lineTo(510.314, 503.181);
    path_28.lineTo(487.814, 503.181);
    path_28.close();

    Paint paint28Fill = Paint()..style = PaintingStyle.fill;
    paint28Fill.color =
        const Color(0xffFFC000).withOpacity((0.2 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_28, paint28Fill);

    Path path_29 = Path();
    path_29.moveTo(546.314, 480.681);
    path_29.lineTo(568.814, 480.681);
    path_29.lineTo(568.814, 503.181);
    path_29.lineTo(546.314, 503.181);
    path_29.close();

    Paint paint29Fill = Paint()..style = PaintingStyle.fill;
    paint29Fill.color =
        const Color(0xffFFC000).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_29, paint29Fill);

    Path path_30 = Path();
    path_30.moveTo(523.811, 323.185);
    path_30.lineTo(456.314, 413.181);
    path_30.lineTo(456.314, 431.181);
    path_30.lineTo(523.814, 342.681);
    path_30.lineTo(591.337, 431.181);
    path_30.lineTo(831.234, 431.181);
    path_30.lineTo(831.234, 413.187);
    path_30.cubicTo(831.234, 413.184, 831.231, 413.181, 831.228, 413.18);
    path_30.lineTo(523.819, 323.182);
    path_30.cubicTo(523.816, 323.182, 523.813, 323.182, 523.811, 323.185);
    path_30.close();

    Paint paint30Fill = Paint()..style = PaintingStyle.fill;
    paint30Fill.color =
        const Color(0xffD0D0D0).withOpacity((0.4 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_30, paint30Fill);

    Path path_31 = Path();
    path_31.moveTo(762.318, 323.181);
    path_31.lineTo(754.69, 323.181);
    path_31.cubicTo(751.348, 321.816, 745.586, 319.753, 738.19, 318.681);
    path_31.cubicTo(722.466, 316.402, 715.65, 320.966, 699.19, 318.681);
    path_31.cubicTo(687.821, 317.103, 690.148, 314.798, 681.19, 314.181);
    path_31.cubicTo(663.992, 312.997, 658.404, 323.347, 645.19, 318.681);
    path_31.cubicTo(637.759, 316.057, 634.584, 311.833, 627.19, 311.181);
    path_31.cubicTo(616.94, 310.276, 607.893, 317.058, 601.69, 323.181);
    path_31.lineTo(523.832, 323.181);
    path_31.cubicTo(523.826, 323.181, 523.822, 323.188, 523.826, 323.193);
    path_31.lineTo(591.051, 413.181);
    path_31.lineTo(591.388, 413.181);
    path_31.cubicTo(603.576, 413.181, 615.759, 414.707, 627.418, 418.258);
    path_31.cubicTo(630.921, 419.324, 633.888, 419.447, 636.318, 419.181);
    path_31.cubicTo(644.284, 418.312, 650.82, 412.846, 657.318, 416.181);
    path_31.cubicTo(659.735, 417.422, 660.686, 419.132, 663.318, 419.181);
    path_31.cubicTo(667.416, 419.257, 668.226, 415.166, 672.318, 414.681);
    path_31.cubicTo(677.427, 414.075, 679.508, 420.058, 684.318, 419.181);
    path_31.cubicTo(687.786, 418.549, 688.156, 415.172, 691.818, 414.681);
    path_31.cubicTo(694.924, 414.265, 697.059, 416.374, 699.318, 417.681);
    path_31.cubicTo(708.943, 423.253, 717.053, 412.09, 733.818, 414.681);
    path_31.cubicTo(739.024, 415.486, 741.792, 417.111, 747.318, 416.181);
    path_31.cubicTo(747.92, 416.08, 748.504, 415.956, 749.069, 415.815);
    path_31.cubicTo(756.468, 413.965, 764.092, 413.181, 771.719, 413.181);
    path_31.lineTo(831.227, 413.181);
    path_31.cubicTo(831.235, 413.181, 831.238, 413.176, 831.233, 413.169);
    path_31.lineTo(762.318, 323.181);
    path_31.close();

    Paint paint31Fill = Paint()..style = PaintingStyle.fill;
    paint31Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.4 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_31, paint31Fill);

    Path path_32 = Path();
    path_32.moveTo(631.806, 402.67);
    path_32.lineTo(596.991, 357.681);
    path_32.lineTo(649.95, 357.681);
    path_32.lineTo(631.819, 402.669);
    path_32.cubicTo(631.817, 402.674, 631.809, 402.675, 631.806, 402.67);
    path_32.close();

    Paint paint32Fill = Paint()..style = PaintingStyle.fill;
    paint32Fill.color =
        const Color(0xff737373).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_32, paint32Fill);

    Path path_33 = Path();
    path_33.moveTo(676.814, 402.681);
    path_33.lineTo(631.821, 402.681);
    path_33.cubicTo(631.817, 402.681, 631.814, 402.678, 631.814, 402.674);
    path_33.lineTo(631.814, 357.681);
    path_33.lineTo(654.314, 327.681);
    path_33.lineTo(676.814, 357.681);
    path_33.lineTo(676.814, 402.681);
    path_33.close();

    Paint paint33Fill = Paint()..style = PaintingStyle.fill;
    paint33Fill.color =
        const Color(0xffD0D0D0).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_33, paint33Fill);

    Path path_34 = Path();
    path_34.moveTo(643.49, 368.181);
    path_34.lineTo(665.99, 368.181);
    path_34.lineTo(665.99, 390.681);
    path_34.lineTo(643.49, 390.681);
    path_34.close();

    Paint paint34Fill = Paint()..style = PaintingStyle.fill;
    paint34Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.2 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_34, paint34Fill);

    Path path_35 = Path();
    path_35.moveTo(739.806, 402.671);
    path_35.lineTo(704.99, 357.681);
    path_35.lineTo(760.349, 357.681);
    path_35.lineTo(739.818, 402.67);
    path_35.cubicTo(739.817, 402.675, 739.81, 402.676, 739.806, 402.671);
    path_35.close();

    Paint paint35Fill = Paint()..style = PaintingStyle.fill;
    paint35Fill.color =
        const Color(0xff737373).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_35, paint35Fill);

    Path path_36 = Path();
    path_36.moveTo(784.814, 402.681);
    path_36.lineTo(739.821, 402.681);
    path_36.cubicTo(739.818, 402.681, 739.814, 402.678, 739.814, 402.674);
    path_36.lineTo(739.814, 357.681);
    path_36.lineTo(762.314, 327.681);
    path_36.lineTo(784.814, 357.681);
    path_36.lineTo(784.814, 402.681);
    path_36.close();

    Paint paint36Fill = Paint()..style = PaintingStyle.fill;
    paint36Fill.color =
        const Color(0xffD0D0D0).withOpacity((0.2 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_36, paint36Fill);

    Path path_37 = Path();
    path_37.moveTo(751.814, 368.181);
    path_37.lineTo(774.314, 368.181);
    path_37.lineTo(774.314, 390.681);
    path_37.lineTo(751.814, 390.681);
    path_37.close();

    Paint paint37Fill = Paint()..style = PaintingStyle.fill;
    paint37Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_37, paint37Fill);

    Path path_38 = Path();
    path_38.moveTo(479.032, 506.115);
    path_38.cubicTo(470.579, 507.316, 461.758, 505.364, 454.277, 501.016);
    path_38.cubicTo(446.474, 496.482, 445.175, 490.388, 445.112, 490.065);
    path_38.cubicTo(445.11, 490.058, 445.118, 490.058, 445.124, 490.062);
    path_38.cubicTo(452.084, 494.91, 460.322, 498.031, 468.728, 499.025);
    path_38.cubicTo(483.988, 502.37, 490.251, 483.848, 480.235, 476.84);
    path_38.cubicTo(477.701, 475.066, 474.549, 474.458, 471.474, 474.786);
    path_38.cubicTo(465.121, 475.464, 458.486, 474.38, 452.838, 471.641);
    path_38.cubicTo(447.693, 469.146, 444.401, 463.951, 444.24, 458.234);
    path_38.cubicTo(444.24, 458.228, 444.246, 458.224, 444.251, 458.227);
    path_38.cubicTo(450.348, 461.909, 457.427, 464.059, 464.508, 464.32);
    path_38.cubicTo(475.971, 464.177, 478.366, 449.583, 470.456, 444.514);
    path_38.cubicTo(468.513, 443.269, 466.148, 442.836, 463.859, 443.131);
    path_38.cubicTo(458.529, 443.816, 452.975, 443, 448.3, 440.727);
    path_38.cubicTo(445.449, 439.341, 443.651, 436.434, 443.559, 433.266);
    path_38.cubicTo(443.559, 433.26, 443.565, 433.256, 443.57, 433.259);
    path_38.cubicTo(447.662, 435.488, 452.24, 436.863, 456.852, 437.12);
    path_38.cubicTo(468.243, 438.202, 470.283, 421.465, 459.714, 419.297);
    path_38.cubicTo(459.125, 419.176, 458.519, 419.138, 457.919, 419.18);
    path_38.cubicTo(453.38, 419.495, 448.702, 420.076, 444.574, 417.479);
    path_38.cubicTo(440.962, 415.483, 438.096, 411.922, 437.43, 407.486);
    path_38.cubicTo(437.087, 405.067, 435.094, 403.9, 433.094, 403.904);
    path_38.cubicTo(433.065, 403.903, 433.034, 403.904, 433.005, 403.904);
    path_38.cubicTo(432.976, 403.904, 432.946, 403.903, 432.917, 403.904);
    path_38.cubicTo(430.917, 403.9, 428.925, 405.067, 428.581, 407.486);
    path_38.cubicTo(427.915, 411.922, 425.049, 415.483, 421.437, 417.479);
    path_38.cubicTo(417.503, 419.953, 413.068, 419.543, 408.73, 419.226);
    path_38.cubicTo(407.367, 419.126, 405.98, 419.264, 404.708, 419.765);
    path_38.cubicTo(395.975, 423.206, 398.379, 438.144, 409.161, 437.12);
    path_38.cubicTo(413.214, 436.894, 417.243, 435.805, 420.938, 434.032);
    path_38.cubicTo(420.943, 434.029, 420.949, 434.033, 420.949, 434.039);
    path_38.cubicTo(420.874, 436.621, 419.459, 438.997, 417.19, 440.231);
    path_38.cubicTo(412.19, 442.953, 406.033, 443.918, 400.189, 443.066);
    path_38.cubicTo(399.345, 442.943, 398.483, 442.907, 397.647, 443.082);
    path_38.cubicTo(385.696, 445.581, 387.08, 464.161, 400.02, 464.322);
    path_38.cubicTo(407.101, 464.06, 414.18, 461.911, 420.277, 458.229);
    path_38.cubicTo(420.282, 458.226, 420.289, 458.23, 420.288, 458.236);
    path_38.cubicTo(420.127, 463.952, 416.836, 469.148, 411.69, 471.643);
    path_38.cubicTo(406.042, 474.381, 399.408, 475.465, 393.054, 474.787);
    path_38.cubicTo(389.979, 474.459, 386.827, 475.068, 384.293, 476.841);
    path_38.cubicTo(374.276, 483.849, 380.54, 502.371, 395.8, 499.026);
    path_38.cubicTo(404.205, 498.033, 412.443, 494.912, 419.402, 490.065);
    path_38.cubicTo(419.408, 490.061, 419.415, 490.065, 419.413, 490.072);
    path_38.cubicTo(419.291, 490.483, 417.093, 497.576, 410.25, 501.018);
    path_38.cubicTo(402.52, 504.906, 393.948, 507.318, 385.495, 506.117);
    path_38.cubicTo(376.63, 504.787, 368.512, 512.431, 369.378, 521.379);
    path_38.cubicTo(371.662, 540.02, 394.402, 534.344, 406.265, 529.03);
    path_38.cubicTo(410.632, 527.174, 414.773, 524.698, 418.553, 521.741);
    path_38.lineTo(418.181, 554.183);
    path_38.lineTo(446.346, 554.183);
    path_38.lineTo(445.974, 521.741);
    path_38.cubicTo(449.753, 524.698, 453.896, 527.174, 458.262, 529.03);
    path_38.cubicTo(470.125, 534.343, 492.865, 540.02, 495.15, 521.379);
    path_38.cubicTo(496.015, 512.429, 487.898, 504.785, 479.032, 506.115);
    path_38.close();

    Paint paint38Fill = Paint()..style = PaintingStyle.fill;
    paint38Fill.color =
        const Color(0xffD0D0D0).withOpacity((0.2 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_38, paint38Fill);

    Path path_46 = Path();
    path_46.moveTo(583.686, 565.72);
    path_46.cubicTo(583.686, 569.448, 575.292, 572.47, 564.936, 572.47);
    path_46.cubicTo(554.581, 572.47, 546.186, 569.448, 546.186, 565.72);
    path_46.cubicTo(546.186, 561.992, 553.831, 563.47, 564.186, 563.47);
    path_46.cubicTo(574.542, 563.47, 583.686, 561.992, 583.686, 565.72);
    path_46.close();

    Paint paint46Fill = Paint()..style = PaintingStyle.fill;
    paint46Fill.color =
        const Color(0xffE4E4E4).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_46, paint46Fill);

    Path path_47 = Path();
    path_47.moveTo(636.186, 579.22);
    path_47.cubicTo(636.186, 582.948, 627.792, 585.97, 617.436, 585.97);
    path_47.cubicTo(607.081, 585.97, 598.686, 582.948, 598.686, 579.22);
    path_47.cubicTo(598.686, 575.492, 606.331, 576.97, 616.686, 576.97);
    path_47.cubicTo(627.042, 576.97, 636.186, 575.492, 636.186, 579.22);
    path_47.close();

    Paint paint47Fill = Paint()..style = PaintingStyle.fill;
    paint47Fill.color =
        const Color(0xffE4E4E4).withOpacity((0.2 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_47, paint47Fill);

    Path path_48 = Path();
    path_48.moveTo(470.432, 556.843);
    path_48.cubicTo(470.432, 558.586, 466.505, 560.001, 461.66, 560.001);
    path_48.cubicTo(456.815, 560.001, 452.888, 558.587, 452.888, 556.843);
    path_48.cubicTo(452.888, 555.098, 456.464, 555.79, 461.309, 555.79);
    path_48.cubicTo(466.153, 555.79, 470.432, 555.098, 470.432, 556.843);
    path_48.close();

    Paint paint48Fill = Paint()..style = PaintingStyle.fill;
    paint48Fill.color =
        const Color(0xffE4E4E4).withOpacity((0.3 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_48, paint48Fill);

    Path path_49 = Path();
    path_49.moveTo(492.186, 563.023);
    path_49.cubicTo(492.186, 564.766, 488.259, 566.181, 483.414, 566.181);
    path_49.cubicTo(478.569, 566.181, 474.642, 564.767, 474.642, 563.023);
    path_49.cubicTo(474.642, 561.279, 478.219, 561.97, 483.063, 561.97);
    path_49.cubicTo(487.908, 561.971, 492.186, 561.279, 492.186, 563.023);
    path_49.close();

    Paint paint49Fill = Paint()..style = PaintingStyle.fill;
    paint49Fill.color =
        const Color(0xffE4E4E4).withOpacity((0.2 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_49, paint49Fill);

    Path path_50 = Path();
    path_50.moveTo(799.686, 335.181);
    path_50.cubicTo(799.686, 336.838, 798.343, 338.181, 796.686, 338.181);
    path_50.cubicTo(795.029, 338.181, 793.686, 336.838, 793.686, 335.181);
    path_50.cubicTo(793.686, 333.524, 795.029, 332.181, 796.686, 332.181);
    path_50.cubicTo(798.343, 332.181, 799.686, 333.524, 799.686, 335.181);
    path_50.close();

    Paint paint50Fill = Paint()..style = PaintingStyle.fill;
    paint50Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.4 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_50, paint50Fill);

    Path path_51 = Path();
    path_51.moveTo(838.686, 384.681);
    path_51.cubicTo(838.686, 386.338, 837.343, 387.681, 835.686, 387.681);
    path_51.cubicTo(834.029, 387.681, 832.686, 386.338, 832.686, 384.681);
    path_51.cubicTo(832.686, 383.024, 834.029, 381.681, 835.686, 381.681);
    path_51.cubicTo(837.343, 381.681, 838.686, 383.024, 838.686, 384.681);
    path_51.close();

    Paint paint51Fill = Paint()..style = PaintingStyle.fill;
    paint51Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_51, paint51Fill);

    Path path_52 = Path();
    path_52.moveTo(855.186, 407.181);
    path_52.cubicTo(855.186, 408.838, 853.843, 410.181, 852.186, 410.181);
    path_52.cubicTo(850.529, 410.181, 849.186, 408.838, 849.186, 407.181);
    path_52.cubicTo(849.186, 405.524, 850.529, 404.181, 852.186, 404.181);
    path_52.cubicTo(853.843, 404.181, 855.186, 405.524, 855.186, 407.181);
    path_52.close();

    Paint paint52Fill = Paint()..style = PaintingStyle.fill;
    paint52Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.2 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_52, paint52Fill);

    Path path_53 = Path();
    path_53.moveTo(564.186, 308.181);
    path_53.cubicTo(564.186, 309.838, 562.843, 311.181, 561.186, 311.181);
    path_53.cubicTo(559.529, 311.181, 558.186, 309.838, 558.186, 308.181);
    path_53.cubicTo(558.186, 306.524, 559.529, 305.181, 561.186, 305.181);
    path_53.cubicTo(562.843, 305.181, 564.186, 306.524, 564.186, 308.181);
    path_53.close();

    Paint paint53Fill = Paint()..style = PaintingStyle.fill;
    paint53Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_53, paint53Fill);

    Path path_54 = Path();
    path_54.moveTo(558.314, 432.681);
    path_54.cubicTo(558.314, 434.338, 556.971, 435.681, 555.314, 435.681);
    path_54.cubicTo(553.657, 435.681, 552.314, 434.338, 552.314, 432.681);
    path_54.cubicTo(552.314, 431.024, 553.657, 429.681, 555.314, 429.681);
    path_54.cubicTo(556.971, 429.681, 558.314, 431.024, 558.314, 432.681);
    path_54.close();

    Paint paint54Fill = Paint()..style = PaintingStyle.fill;
    paint54Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.3 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_54, paint54Fill);

    Path path_55 = Path();
    path_55.moveTo(714.807, 456.086);
    path_55.cubicTo(715.974, 457.253, 715.967, 459.151, 714.792, 460.325);
    path_55.cubicTo(713.617, 461.5, 711.719, 461.506, 710.552, 460.339);
    path_55.cubicTo(709.386, 459.173, 709.393, 457.275, 710.568, 456.1);
    path_55.cubicTo(711.743, 454.925, 713.641, 454.919, 714.807, 456.086);
    path_55.close();

    Paint paint55Fill = Paint()..style = PaintingStyle.fill;
    paint55Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_55, paint55Fill);

    Path path_56 = Path();
    path_56.moveTo(746.308, 445.587);
    path_56.cubicTo(747.475, 446.753, 747.468, 448.651, 746.293, 449.826);
    path_56.cubicTo(745.118, 451.001, 743.22, 451.007, 742.053, 449.84);
    path_56.cubicTo(740.887, 448.674, 740.894, 446.776, 742.069, 445.601);
    path_56.cubicTo(743.244, 444.426, 745.142, 444.42, 746.308, 445.587);
    path_56.close();

    Paint paint56Fill = Paint()..style = PaintingStyle.fill;
    paint56Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_56, paint56Fill);

    Path path_57 = Path();
    path_57.moveTo(661.359, 471.02);
    path_57.cubicTo(663.804, 474.231, 660.174, 477.861, 656.963, 475.414);
    path_57.cubicTo(654.518, 472.204, 658.148, 468.574, 661.359, 471.02);
    path_57.close();

    Paint paint57Fill = Paint()..style = PaintingStyle.fill;
    paint57Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_57, paint57Fill);

    Path path_58 = Path();
    path_58.moveTo(737.384, 521.984);
    path_58.cubicTo(739.83, 525.194, 736.199, 528.824, 732.988, 526.378);
    path_58.cubicTo(730.543, 523.167, 734.174, 519.538, 737.384, 521.984);
    path_58.close();

    Paint paint58Fill = Paint()..style = PaintingStyle.fill;
    paint58Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_58, paint58Fill);

    Path path_59 = Path();
    path_59.moveTo(523.686, 389.181);
    path_59.cubicTo(523.686, 390.838, 522.343, 392.181, 520.686, 392.181);
    path_59.cubicTo(519.029, 392.181, 517.686, 390.838, 517.686, 389.181);
    path_59.cubicTo(517.686, 387.524, 519.029, 386.181, 520.686, 386.181);
    path_59.cubicTo(522.343, 386.181, 523.686, 387.524, 523.686, 389.181);
    path_59.close();

    Paint paint59Fill = Paint()..style = PaintingStyle.fill;
    paint59Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_59, paint59Fill);

    Path path_60 = Path();
    path_60.moveTo(514.686, 516.681);
    path_60.cubicTo(514.686, 518.338, 513.343, 519.681, 511.686, 519.681);
    path_60.cubicTo(510.029, 519.681, 508.686, 518.338, 508.686, 516.681);
    path_60.cubicTo(508.686, 515.024, 510.029, 513.681, 511.686, 513.681);
    path_60.cubicTo(513.343, 513.681, 514.686, 515.024, 514.686, 516.681);
    path_60.close();

    Paint paint60Fill = Paint()..style = PaintingStyle.fill;
    paint60Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_60, paint60Fill);

    Path path_61 = Path();
    path_61.moveTo(513.186, 432.681);
    path_61.cubicTo(513.186, 434.338, 511.843, 435.681, 510.186, 435.681);
    path_61.cubicTo(508.529, 435.681, 507.186, 434.338, 507.186, 432.681);
    path_61.cubicTo(507.186, 431.024, 508.529, 429.681, 510.186, 429.681);
    path_61.cubicTo(511.843, 429.681, 513.186, 431.024, 513.186, 432.681);
    path_61.close();

    Paint paint61Fill = Paint()..style = PaintingStyle.fill;
    paint61Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_61, paint61Fill);

    Path path_62 = Path();
    path_62.moveTo(507.186, 392.181);
    path_62.cubicTo(507.186, 393.838, 505.843, 395.181, 504.186, 395.181);
    path_62.cubicTo(502.529, 395.181, 501.186, 393.838, 501.186, 392.181);
    path_62.cubicTo(501.186, 390.524, 502.529, 389.181, 504.186, 389.181);
    path_62.cubicTo(505.843, 389.181, 507.186, 390.524, 507.186, 392.181);
    path_62.close();

    Paint paint62Fill = Paint()..style = PaintingStyle.fill;
    paint62Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_62, paint62Fill);

    Path path_63 = Path();
    path_63.moveTo(483.186, 348.681);
    path_63.cubicTo(483.186, 350.338, 481.843, 351.681, 480.186, 351.681);
    path_63.cubicTo(478.529, 351.681, 477.186, 350.338, 477.186, 348.681);
    path_63.cubicTo(477.186, 347.024, 478.529, 345.681, 480.186, 345.681);
    path_63.cubicTo(481.843, 345.681, 483.186, 347.024, 483.186, 348.681);
    path_63.close();

    Paint paint63Fill = Paint()..style = PaintingStyle.fill;
    paint63Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_63, paint63Fill);

    Path path_64 = Path();
    path_64.moveTo(504.186, 326.181);
    path_64.cubicTo(504.186, 327.838, 502.843, 329.181, 501.186, 329.181);
    path_64.cubicTo(499.529, 329.181, 498.186, 327.838, 498.186, 326.181);
    path_64.cubicTo(498.186, 324.524, 499.529, 323.181, 501.186, 323.181);
    path_64.cubicTo(502.843, 323.181, 504.186, 324.524, 504.186, 326.181);
    path_64.close();

    Paint paint64Fill = Paint()..style = PaintingStyle.fill;
    paint64Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_64, paint64Fill);

    Path path_65 = Path();
    path_65.moveTo(712.686, 291.681);
    path_65.cubicTo(712.686, 293.338, 711.343, 294.681, 709.686, 294.681);
    path_65.cubicTo(708.029, 294.681, 706.686, 293.338, 706.686, 291.681);
    path_65.cubicTo(706.686, 290.024, 708.029, 288.681, 709.686, 288.681);
    path_65.cubicTo(711.343, 288.681, 712.686, 290.024, 712.686, 291.681);
    path_65.close();

    Paint paint65Fill = Paint()..style = PaintingStyle.fill;
    paint65Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_65, paint65Fill);

    Path path_66 = Path();
    path_66.moveTo(730.686, 270.681);
    path_66.cubicTo(730.686, 272.338, 729.343, 273.681, 727.686, 273.681);
    path_66.cubicTo(726.029, 273.681, 724.686, 272.338, 724.686, 270.681);
    path_66.cubicTo(724.686, 269.024, 726.029, 267.681, 727.686, 267.681);
    path_66.cubicTo(729.343, 267.681, 730.686, 269.024, 730.686, 270.681);
    path_66.close();

    Paint paint66Fill = Paint()..style = PaintingStyle.fill;
    paint66Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_66, paint66Fill);

    Path path_67 = Path();
    path_67.moveTo(705.186, 249.681);
    path_67.cubicTo(705.186, 251.338, 703.843, 252.681, 702.186, 252.681);
    path_67.cubicTo(700.529, 252.681, 699.186, 251.338, 699.186, 249.681);
    path_67.cubicTo(699.186, 248.024, 700.529, 246.681, 702.186, 246.681);
    path_67.cubicTo(703.843, 246.681, 705.186, 248.024, 705.186, 249.681);
    path_67.close();

    Paint paint67Fill = Paint()..style = PaintingStyle.fill;
    paint67Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_67, paint67Fill);

    Path path_68 = Path();
    path_68.moveTo(429.186, 434.181);
    path_68.cubicTo(429.186, 435.838, 427.843, 437.181, 426.186, 437.181);
    path_68.cubicTo(424.529, 437.181, 423.186, 435.838, 423.186, 434.181);
    path_68.cubicTo(423.186, 432.524, 424.529, 431.181, 426.186, 431.181);
    path_68.cubicTo(427.843, 431.181, 429.186, 432.524, 429.186, 434.181);
    path_68.close();

    Paint paint68Fill = Paint()..style = PaintingStyle.fill;
    paint68Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_68, paint68Fill);

    Path path_69 = Path();
    path_69.moveTo(436.686, 465.681);
    path_69.cubicTo(436.686, 467.338, 435.343, 468.681, 433.686, 468.681);
    path_69.cubicTo(432.029, 468.681, 430.686, 467.338, 430.686, 465.681);
    path_69.cubicTo(430.686, 464.024, 432.029, 462.681, 433.686, 462.681);
    path_69.cubicTo(435.343, 462.681, 436.686, 464.024, 436.686, 465.681);
    path_69.close();

    Paint paint69Fill = Paint()..style = PaintingStyle.fill;
    paint69Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_69, paint69Fill);

    Path path_70 = Path();
    path_70.moveTo(405.186, 515.181);
    path_70.cubicTo(405.186, 516.838, 403.843, 518.181, 402.186, 518.181);
    path_70.cubicTo(400.529, 518.181, 399.186, 516.838, 399.186, 515.181);
    path_70.cubicTo(399.186, 513.524, 400.529, 512.181, 402.186, 512.181);
    path_70.cubicTo(403.843, 512.181, 405.186, 513.524, 405.186, 515.181);
    path_70.close();

    Paint paint70Fill = Paint()..style = PaintingStyle.fill;
    paint70Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_70, paint70Fill);

    Path path_71 = Path();
    path_71.moveTo(717.186, 335.181);
    path_71.cubicTo(717.186, 336.838, 715.843, 338.181, 714.186, 338.181);
    path_71.cubicTo(712.529, 338.181, 711.186, 336.838, 711.186, 335.181);
    path_71.cubicTo(711.186, 333.524, 712.529, 332.181, 714.186, 332.181);
    path_71.cubicTo(715.843, 332.181, 717.186, 333.524, 717.186, 335.181);
    path_71.close();

    Paint paint71Fill = Paint()..style = PaintingStyle.fill;
    paint71Fill.color =
        const Color(0xffF0F0F0).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_71, paint71Fill);

    Path path_72 = Path();
    path_72.moveTo(699.186, 356.181);
    path_72.cubicTo(699.186, 357.838, 697.843, 359.181, 696.186, 359.181);
    path_72.cubicTo(694.529, 359.181, 693.186, 357.838, 693.186, 356.181);
    path_72.cubicTo(693.186, 354.524, 694.529, 353.181, 696.186, 353.181);
    path_72.cubicTo(697.843, 353.181, 699.186, 354.524, 699.186, 356.181);
    path_72.close();

    Paint paint72Fill = Paint()..style = PaintingStyle.fill;
    paint72Fill.color =
        const Color(0xffF0F0F0).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_72, paint72Fill);

    Path path_73 = Path();
    path_73.moveTo(682.686, 345.681);
    path_73.cubicTo(682.686, 347.338, 681.343, 348.681, 679.686, 348.681);
    path_73.cubicTo(678.029, 348.681, 676.686, 347.338, 676.686, 345.681);
    path_73.cubicTo(676.686, 344.024, 678.029, 342.681, 679.686, 342.681);
    path_73.cubicTo(681.343, 342.681, 682.686, 344.024, 682.686, 345.681);
    path_73.close();

    Paint paint73Fill = Paint()..style = PaintingStyle.fill;
    paint73Fill.color =
        const Color(0xffF0F0F0).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_73, paint73Fill);

    Path path_74 = Path();
    path_74.moveTo(591.186, 360.681);
    path_74.cubicTo(591.186, 362.338, 589.843, 363.681, 588.186, 363.681);
    path_74.cubicTo(586.529, 363.681, 585.186, 362.338, 585.186, 360.681);
    path_74.cubicTo(585.186, 359.024, 586.529, 357.681, 588.186, 357.681);
    path_74.cubicTo(589.843, 357.681, 591.186, 359.024, 591.186, 360.681);
    path_74.close();

    Paint paint74Fill = Paint()..style = PaintingStyle.fill;
    paint74Fill.color =
        const Color(0xffF0F0F0).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_74, paint74Fill);

    Path path_75 = Path();
    path_75.moveTo(822.186, 308.181);
    path_75.cubicTo(822.186, 309.838, 820.843, 311.181, 819.186, 311.181);
    path_75.cubicTo(817.529, 311.181, 816.186, 309.838, 816.186, 308.181);
    path_75.cubicTo(816.186, 306.524, 817.529, 305.181, 819.186, 305.181);
    path_75.cubicTo(820.843, 305.181, 822.186, 306.524, 822.186, 308.181);
    path_75.close();

    Paint paint75Fill = Paint()..style = PaintingStyle.fill;
    paint75Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_75, paint75Fill);

    Path path_76 = Path();
    path_76.moveTo(660.314, 300.681);
    path_76.cubicTo(660.314, 302.338, 658.971, 303.681, 657.314, 303.681);
    path_76.cubicTo(655.657, 303.681, 654.314, 302.338, 654.314, 300.681);
    path_76.cubicTo(654.314, 299.024, 655.657, 297.681, 657.314, 297.681);
    path_76.cubicTo(658.971, 297.681, 660.314, 299.024, 660.314, 300.681);
    path_76.close();

    Paint paint76Fill = Paint()..style = PaintingStyle.fill;
    paint76Fill.color =
        const Color(0xffFFFFFF).withOpacity((0.1 + t).clamp(0.0, 1.0));
    canvas.drawPath(path_76, paint76Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

import 'package:flutter/material.dart';
import 'package:walkthough_screen/widgets.dart';

class SixthScreen extends StatelessWidget {
  const SixthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomPaint(
      foregroundPainter: WavePainter(),
      child: Container(
          decoration: BoxDecoration(
        gradient: globalGradient,
      )),
    ));
  }
}

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFf4dead)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    final path = Path();

    path.moveTo(0, size.height * 0.745);

    // first curve
    path.quadraticBezierTo(
      size.width * 0.18, //30
      size.height * 0.76, // increase this to first curve

      size.width * 0.34, // 90
      size.height * 0.8, // 712
    );

    // middle
    path.quadraticBezierTo(
      size.width * 0.65,
      size.height * 0.89,
      size.width - 5,
      size.height * 0.77 + 1,
    );

    // last
    path.quadraticBezierTo(
      size.width * 0.995,
      size.height * 0.769,
      size.width,
      size.height * 0.770,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.745);
    canvas.drawPath(path, paint);

    // filling the background

    final paint1 = Paint();
    paint1.style = PaintingStyle.fill;
    paint1.color = const Color(0xFFf4dead);
    canvas.drawPath(path, paint1);
  }

  @override
  bool shouldRepaint(WavePainter oldDelegate) => true;

  // @override
  // bool shouldRebuildSemantics(WavePainter oldDelegate) => false;
}

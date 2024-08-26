import 'package:flutter/material.dart';

/*
Custom paint A widget that provides a canvas on which to draw during the paint phase
*  */

main() {
  runApp(const CsPaint());
}

class CsPaint extends StatefulWidget {
  const CsPaint({super.key});

  @override
  State<CsPaint> createState() => _CsPaintState();
}

class _CsPaintState extends State<CsPaint> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text('Custom paint'),
        ),
        body: Center(
          child: CustomPaint(
            painter: MasterPainter(),
            size: const Size(600, 800),
            child: Container(
              color: Colors.black12,
              width: 600,
              height: 500,
            ),

          ),
        ),
      ),
    );
  }
}

class MasterPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = Paint();
    paint.strokeWidth= 3;
    paint.color = Colors.red;
    paint.style = PaintingStyle.stroke;
    canvas.drawLine(Offset.zero, Offset(size.width, 0), paint);
    canvas.drawCircle(const Offset(300, 200), 40, paint);
    canvas.drawRect(Rect.fromCenter(center: const Offset(300, 70), width: 20, height: 50), paint);
    

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}

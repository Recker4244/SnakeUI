import 'dart:math';

import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
class PathPainter extends CustomPainter {
  PathPainter({this.total=0});
 late int total;
  late Color color;
  Paint pathPaint() {
    return Paint()
      ..strokeWidth = 20
      ..style = PaintingStyle.stroke
      ..color = Color.fromRGBO(153, 203, 229, 1);
  }

  Path drawCurvePath(int index, Size size) {
    final indexY = 
    index!=0?(index*120+50).toDouble():50.0;
    double curveH=120;
    Size curveSize = Size(110, curveH);
    final lineStartPoint = Offset(80, indexY);
    final lineEndPoint = Offset(size.width - 80, indexY);

    final startingPoint = index.isOdd ? lineStartPoint : lineEndPoint;
    final endingPoint = index.isOdd ? lineEndPoint : lineStartPoint;
    final path = Path()
      ..moveTo(startingPoint.dx, startingPoint.dy)
      ..lineTo(
        endingPoint.dx,
        endingPoint.dy,
      )
      ..addArc(
        index.isOdd
            ? Offset(lineEndPoint.dx-55, indexY) & curveSize
            : Offset(lineStartPoint.dx - 55, indexY) & curveSize,
        ((index.isOdd ? -1 : 1) * pi )/ 2,
        pi,
      );

    return path;
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < total/2; i++) {
      final path = drawCurvePath(i, size);
      canvas
        ..drawPath(path, pathPaint())
        ;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
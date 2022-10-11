import 'dart:math';

import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
class PathPainter extends CustomPainter {
  late Color color;
  Paint pathPaint() {
    return Paint()
      ..strokeWidth = 20
      ..style = PaintingStyle.stroke
      ..color = Color.fromRGBO(153, 203, 229, 1);
  }

  Path drawCurvePath(int index, Size size) {
    final indexY = (index * 100 + (index) * 10).toDouble();
    const curveSize = Size(110, 110);
    final lineStartPoint = Offset(60, indexY);
    final lineEndPoint = Offset(size.width - 60, indexY);

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
            ? Offset(lineEndPoint.dx - 55, indexY) & curveSize
            : Offset(lineStartPoint.dx - 55, indexY) & curveSize,
        (index.isOdd ? -1 : 1) * pi / 2,
        pi,
      );

    return path;
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 1; i <= 7; i++) {
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
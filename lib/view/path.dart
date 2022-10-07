import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:poc/view/path_painter%20copy.dart';
import 'package:poc/view/path_painter.dart';

class SnakePath extends StatefulWidget {
  @override
  _SnakePathState createState() => _SnakePathState();
}

class _SnakePathState extends State<SnakePath> {
  int n = 5;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0) + EdgeInsets.only(top: 30),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PathOverlayPainter(),
                painter: PathPainter(),
              ),
            ),
            ListView.builder(
          itemCount: n,
          padding: EdgeInsets.all(10),
          itemBuilder: (BuildContext context, int index) {
            if(index%2==0)
            return Row(
              
              children: [
                Spacer(),
                CompletedSlab(index: index+2,),
            
            Spacer(),
            CompletedSlab(index: index+1,)
            ],);

            
            else
            return Row(
              
              children: [
                Spacer(flex: 1,),
                CompletedSlab(index:index+2),
            
            Spacer(flex: 2,),
            CompletedSlab(index: index+3,),
            Spacer(flex: 2,),
            ],);
            
          }),

          ],
        ),
      ),
    );

    
  }
}

class CompletedSlab extends StatelessWidget {
  final int? index;
  const CompletedSlab({
    Key? key,
    this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(),
      child: Stack(children: <Widget>[
        Positioned(
            top: 0,
            left: 0,
            child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(198, 244, 244, 1),
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(100, 100)),
                ))),
        Positioned(
            top: 10,
            left: 10,
            child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(60, 191, 174, 1),
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(80, 80)),
                ))),
        Positioned(
            top: 38,
            left: 40,
            child: Text(
              index.toString(),
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Source Sans Pro',
                  fontSize: 18,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.3333333333333333),
            )),
      ]));
  }
}

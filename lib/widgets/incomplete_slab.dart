import 'package:flutter/material.dart';
class IncompleteSlab extends StatelessWidget {
  final int? index;
  const IncompleteSlab({Key? key, this.index}) : super(key: key);

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
                    color: Color.fromRGBO(196, 196, 196, 0.5),
                    borderRadius: BorderRadius.all(Radius.elliptical(100, 100)),
                  ))),
          Positioned(
              top: 10,
              left: 10,
              child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(127, 133, 131, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(80, 80)),
                  ))),
          Positioned(
              top: 38,
              left: 40,
              child: Text(
                index.toString().padLeft(2,'0'),
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18,
                    letterSpacing:
                        0 ,
                    fontWeight: FontWeight.normal,
                    height: 1.3333333333333333),
              )),
        ]));
  }
}

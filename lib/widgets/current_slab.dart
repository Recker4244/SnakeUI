import 'package:flutter/material.dart';
class CurrentSlab extends StatelessWidget {
  final int? index;
  const CurrentSlab({Key? key, this.index}) : super(key: key);

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
                    color: Color.fromRGBO(243, 162, 205, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(100, 100)),
                  ))),
          Positioned(
              top: 10,
              left: 10,
              child: Container(
                  width: 80,
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(
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
              ),Text(
                "You're here!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 10,
                    letterSpacing:
                        0 ,
                    fontWeight: FontWeight.normal,
                    height: 1.3333333333333333),
              )],),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(179, 18, 105, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(80, 80)),
                  ))),
          
        ]));
  }
}

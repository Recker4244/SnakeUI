import 'package:flutter/material.dart';
class CompletedSlab extends StatelessWidget {
  final int? index;
  const CompletedSlab({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
          Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(198, 244, 244, 0.5),
                    borderRadius: BorderRadius.all(Radius.elliptical(100, 100)),
                  )),
          
          
          Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(60, 191, 174, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(80, 80)),
                  )),
          
          Text(
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
              )
        ]));
  }
}

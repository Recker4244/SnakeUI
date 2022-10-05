import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';

class SnakePath extends StatefulWidget {
  @override
  _SnakePathState createState() => _SnakePathState();
}

class _SnakePathState extends State<SnakePath> {
  int n = 5;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.white,
      ),
      ListView.builder(
          itemCount: n,
          padding: EdgeInsets.all(0),
          itemBuilder: (BuildContext context, int index) {
            if (index == 0)
              return Container(
                height: 150,
                child: Stack(children: [
                  Image.asset(
                    
                    'assets/images/Vector 1461.png',
                    width: 200,
                  ),
                  Positioned(
                    left: 80,
                    child: Container(
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
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(100, 100)),
                                  ))),
                          Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(60, 191, 174, 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(80, 80)),
                                  ))),
                          Positioned(
                              top: 38,
                              left: 40,
                              child: Text(
                                '01',
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
                        ])),
                  )
                ]),
              );
            else if (index == n - 1)
              return Container(
                height: 300,
                child: Stack(children: [
                  Positioned(
                    right: 0,
                    child: Image.asset(
                      'assets/images/Vector 1464.png',
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 80,
                    child: Container(
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
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(100, 100)),
                                  ))),
                          Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(60, 191, 174, 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(80, 80)),
                                  ))),
                          Positioned(
                              top: 38,
                              left: 40,
                              child: Text(
                                '0' + (index + 1).toString(),
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
                        ])),
                  )
                ]),
              );
            else if (index % 2 == 0)
              return Container(
                height: 200,
                child: Stack(children: [
                  Positioned(
                    left: 0,
                    child: Image.asset(
                      'assets/images/Vector 1463.png',
                    ),
                  ),
                  Positioned(
                    left: 80,
                    child: Container(
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
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(100, 100)),
                                  ))),
                          Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(60, 191, 174, 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(80, 80)),
                                  ))),
                          Positioned(
                              top: 38,
                              left: 40,
                              child: Text(
                                '0' + (index + 1).toString(),
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
                        ])),
                  )
                ]),
              );
            else
              return Container(
                height: 200,
                child: Stack(children: [
                  Positioned(
                    right: 0,
                    child: Image.asset(
                      'assets/images/Vector 1462.png',
                    ),
                  ),
                  Positioned(
                    right: 80,
                    child: Container(
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
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(100, 100)),
                                  ))),
                          Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(60, 191, 174, 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(80, 80)),
                                  ))),
                          Positioned(
                              top: 38,
                              left: 40,
                              child: Text(
                                '0' + (index + 1).toString(),
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
                        ])),
                  )
                ]),
              );
          }),
    ]);
    // return Container(
    //     width: 430,
    //     height: 932,
    //     decoration: BoxDecoration(
    //       color: Color.fromRGBO(255, 255, 255, 1),
    //     ),
    //     child: Stack(children: <Widget>[
    //       Positioned(
    //           top: 114,
    //           left: 32,
    //           child: Container(
    //               width: 350,
    //               height: 610,
    //               child: Stack(children: <Widget>[
    //                 Positioned(
    //                     top: 50,
    //                     left: 0,
    //                     child: Container(
    //                         width: 345,
    //                         height: 560,
    //                         child: Stack(children: <Widget>[
    //                           Positioned(
    //                               top: 0,
    //                               left: 0.2509765625,
    //                               child: Image.asset(
    //                                   'assets/images/Vector 1461.png',
    //                                   )),
    //                           Positioned(
    //                               top: 140,
    //                               left: 345,
    //                               child: Transform.rotate(
    //                                 angle: -180 * (math.pi / 180),
    //                                 child: Image.asset(
    //                                     'assets/images/Vector 1462.png',
    //                                     ),
    //                               )),
    //                           Positioned(
    //                               top: 280,
    //                               left: 0,
    //                               child: Image.asset(
    //                                   'assets/images/Vector 1463.png',
    //                                   )),
    //                           Positioned(
    //                               top: 420,
    //                               left: 345,
    //                               child: Transform.rotate(
    //                                 angle: -180 * (math.pi / 180),
    //                                 child: Image.asset(
    //                                     'assets/images/Vector 1464.png',
    //                                     ),
    //                               )),
    //                         ]))),
    //                 Positioned(
    //                     top: 0,
    //                     left: 250,
    //                     child: Container(
    //                         width: 100,
    //                         height: 100,
    //                         decoration: BoxDecoration(),
    //                         child: Stack(children: <Widget>[
    //                           Positioned(
    //                               top: 0,
    //                               left: 0,
    //                               child: Container(
    //                                   width: 100,
    //                                   height: 100,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(198, 244, 244, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(100, 100)),
    //                                   ))),
    //                           Positioned(
    //                               top: 10,
    //                               left: 10,
    //                               child: Container(
    //                                   width: 80,
    //                                   height: 80,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(60, 191, 174, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(80, 80)),
    //                                   ))),
    //                           Positioned(
    //                               top: 38,
    //                               left: 40,
    //                               child: Text(
    //                                 '01',
    //                                 textAlign: TextAlign.left,
    //                                 style: TextStyle(
    //                                     color: Color.fromRGBO(255, 255, 255, 1),
    //                                     fontFamily: 'Source Sans Pro',
    //                                     fontSize: 18,
    //                                     letterSpacing:
    //                                         0,
    //                                     fontWeight: FontWeight.normal,
    //                                     height: 1.3333333333333333),
    //                               )),
    //                         ]))),
    //                 Positioned(
    //                     top: 0,
    //                     left: 75,
    //                     child: Container(
    //                         width: 100,
    //                         height: 100,
    //                         decoration: BoxDecoration(),
    //                         child: Stack(children: <Widget>[
    //                           Positioned(
    //                               top: 0,
    //                               left: 0,
    //                               child: Container(
    //                                   width: 100,
    //                                   height: 100,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(198, 244, 244, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(100, 100)),
    //                                   ))),
    //                           Positioned(
    //                               top: 10,
    //                               left: 10,
    //                               child: Container(
    //                                   width: 80,
    //                                   height: 80,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(60, 191, 174, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(80, 80)),
    //                                   ))),
    //                           Positioned(
    //                               top: 38,
    //                               left: 40,
    //                               child: Text(
    //                                 '02',
    //                                 textAlign: TextAlign.left,
    //                                 style: TextStyle(
    //                                     color: Color.fromRGBO(255, 255, 255, 1),
    //                                     fontFamily: 'Source Sans Pro',
    //                                     fontSize: 18,
    //                                     letterSpacing:
    //                                         0,
    //                                     fontWeight: FontWeight.normal,
    //                                     height: 1.3333333333333333),
    //                               )),
    //                         ]))),
    //                 Positioned(
    //                     top: 140,
    //                     left: 6,
    //                     child: Container(
    //                         width: 100,
    //                         height: 100,
    //                         decoration: BoxDecoration(),
    //                         child: Stack(children: <Widget>[
    //                           Positioned(
    //                               top: 0,
    //                               left: 0,
    //                               child: Container(
    //                                   width: 100,
    //                                   height: 100,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(146, 167, 197, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(100, 100)),
    //                                   ))),
    //                           Positioned(
    //                               top: 10,
    //                               left: 10,
    //                               child: Container(
    //                                   width: 80,
    //                                   height: 80,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(38, 80, 139, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(80, 80)),
    //                                   ))),
    //                           Positioned(
    //                               top: 30,
    //                               left: 20,
    //                               child: Container(
    //                                 decoration: BoxDecoration(),
    //                                 padding: EdgeInsets.symmetric(
    //                                     horizontal: 0, vertical: 0),
    //                                 child: Column(
    //                                   mainAxisSize: MainAxisSize.min,
    //                                   children: <Widget>[
    //                                     Text(
    //                                       '03',
    //                                       textAlign: TextAlign.left,
    //                                       style: TextStyle(
    //                                           color: Color.fromRGBO(
    //                                               255, 255, 255, 1),
    //                                           fontFamily: 'Source Sans Pro',
    //                                           fontSize: 18,
    //                                           letterSpacing:
    //                                               ,
    //                                           fontWeight: FontWeight.normal,
    //                                           height: 1.3333333333333333),
    //                                     ),
    //                                     SizedBox(height: 0),
    //                                     Text(
    //                                       'You’re here!',
    //                                       textAlign: TextAlign.left,
    //                                       style: TextStyle(
    //                                           color: Color.fromRGBO(
    //                                               255, 255, 255, 1),
    //                                           fontFamily: 'Source Sans Pro',
    //                                           fontSize: 12,
    //                                           letterSpacing:
    //                                               0,
    //                                           fontWeight: FontWeight.normal,
    //                                           height: 1.3333333333333333),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               )),
    //                         ]))),
    //                 Positioned(
    //                     top: 146,
    //                     left: 165,
    //                     child: Container(
    //                         width: 100,
    //                         height: 100,
    //                         decoration: BoxDecoration(),
    //                         child: Stack(children: <Widget>[
    //                           Positioned(
    //                               top: 0,
    //                               left: 0,
    //                               child: Container(
    //                                   width: 100,
    //                                   height: 100,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(196, 196, 196, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(100, 100)),
    //                                   ))),
    //                           Positioned(
    //                               top: 10,
    //                               left: 10,
    //                               child: Container(
    //                                   width: 80,
    //                                   height: 80,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(127, 133, 131, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(80, 80)),
    //                                   ))),
    //                           Positioned(
    //                               top: 38,
    //                               left: 40,
    //                               child: Text(
    //                                 '04',
    //                                 textAlign: TextAlign.left,
    //                                 style: TextStyle(
    //                                     color: Color.fromRGBO(196, 196, 196, 1),
    //                                     fontFamily: 'Source Sans Pro',
    //                                     fontSize: 18,
    //                                     letterSpacing:
    //                                         0 ,
    //                                     fontWeight: FontWeight.normal,
    //                                     height: 1.3333333333333333),
    //                               )),
    //                         ]))),
    //                 Positioned(
    //                     top: 280,
    //                     left: 250,
    //                     child: Container(
    //                         width: 100,
    //                         height: 100,
    //                         decoration: BoxDecoration(),
    //                         child: Stack(children: <Widget>[
    //                           Positioned(
    //                               top: 0,
    //                               left: 0,
    //                               child: Container(
    //                                   width: 100,
    //                                   height: 100,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(196, 196, 196, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(100, 100)),
    //                                   ))),
    //                           Positioned(
    //                               top: 10,
    //                               left: 10,
    //                               child: Container(
    //                                   width: 80,
    //                                   height: 80,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(127, 133, 131, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(80, 80)),
    //                                   ))),
    //                           Positioned(
    //                               top: 38,
    //                               left: 40,
    //                               child: Text(
    //                                 '05',
    //                                 textAlign: TextAlign.left,
    //                                 style: TextStyle(
    //                                     color: Color.fromRGBO(196, 196, 196, 1),
    //                                     fontFamily: 'Source Sans Pro',
    //                                     fontSize: 18,
    //                                     letterSpacing:
    //                                         0 ,
    //                                     fontWeight: FontWeight.normal,
    //                                     height: 1.3333333333333333),
    //                               )),
    //                         ]))),
    //                 Positioned(
    //                     top: 280,
    //                     left: 75,
    //                     child: Container(
    //                         width: 100,
    //                         height: 100,
    //                         decoration: BoxDecoration(),
    //                         child: Stack(children: <Widget>[
    //                           Positioned(
    //                               top: 0,
    //                               left: 0,
    //                               child: Container(
    //                                   width: 100,
    //                                   height: 100,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(196, 196, 196, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(100, 100)),
    //                                   ))),
    //                           Positioned(
    //                               top: 10,
    //                               left: 10,
    //                               child: Container(
    //                                   width: 80,
    //                                   height: 80,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(127, 133, 131, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(80, 80)),
    //                                   ))),
    //                           Positioned(
    //                               top: 38,
    //                               left: 40,
    //                               child: Text(
    //                                 '06',
    //                                 textAlign: TextAlign.left,
    //                                 style: TextStyle(
    //                                     color: Color.fromRGBO(196, 196, 196, 1),
    //                                     fontFamily: 'Source Sans Pro',
    //                                     fontSize: 18,
    //                                     letterSpacing:
    //                                         0 ,
    //                                     fontWeight: FontWeight.normal,
    //                                     height: 1.3333333333333333),
    //                               )),
    //                         ]))),
    //                 Positioned(
    //                     top: 420,
    //                     left: 6,
    //                     child: Container(
    //                         width: 100,
    //                         height: 100,
    //                         decoration: BoxDecoration(),
    //                         child: Stack(children: <Widget>[
    //                           Positioned(
    //                               top: 0,
    //                               left: 0,
    //                               child: Container(
    //                                   width: 100,
    //                                   height: 100,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(196, 196, 196, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(100, 100)),
    //                                   ))),
    //                           Positioned(
    //                               top: 10,
    //                               left: 10,
    //                               child: Container(
    //                                   width: 80,
    //                                   height: 80,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(127, 133, 131, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(80, 80)),
    //                                   ))),
    //                           Positioned(
    //                               top: 38,
    //                               left: 40,
    //                               child: Text(
    //                                 '07',
    //                                 textAlign: TextAlign.left,
    //                                 style: TextStyle(
    //                                     color: Color.fromRGBO(196, 196, 196, 1),
    //                                     fontFamily: 'Source Sans Pro',
    //                                     fontSize: 18,
    //                                     letterSpacing:
    //                                         0 ,
    //                                     fontWeight: FontWeight.normal,
    //                                     height: 1.3333333333333333),
    //                               )),
    //                         ]))),
    //                 Positioned(
    //                     top: 420,
    //                     left: 165,
    //                     child: Container(
    //                         width: 100,
    //                         height: 100,
    //                         decoration: BoxDecoration(),
    //                         child: Stack(children: <Widget>[
    //                           Positioned(
    //                               top: 0,
    //                               left: 0,
    //                               child: Container(
    //                                   width: 100,
    //                                   height: 100,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(196, 196, 196, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(100, 100)),
    //                                   ))),
    //                           Positioned(
    //                               top: 10,
    //                               left: 10,
    //                               child: Container(
    //                                   width: 80,
    //                                   height: 80,
    //                                   decoration: BoxDecoration(
    //                                     color: Color.fromRGBO(127, 133, 131, 1),
    //                                     borderRadius: BorderRadius.all(
    //                                         Radius.elliptical(80, 80)),
    //                                   ))),
    //                           Positioned(
    //                               top: 38,
    //                               left: 40,
    //                               child: Text(
    //                                 '08',
    //                                 textAlign: TextAlign.left,
    //                                 style: TextStyle(
    //                                     color: Color.fromRGBO(196, 196, 196, 1),
    //                                     fontFamily: 'Source Sans Pro',
    //                                     fontSize: 18,
    //                                     letterSpacing:
    //                                         0 ,
    //                                     fontWeight: FontWeight.normal,
    //                                     height: 1.3333333333333333),
    //                               )),
    //                         ]))),
    //               ]))),
    //     ]));
  }
}

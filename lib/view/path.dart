import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:poc/view/completed_path_painter.dart';
import 'package:poc/view/path_painter.dart';

class SnakePath extends StatefulWidget {
  @override
  _SnakePathState createState() => _SnakePathState();
}

class _SnakePathState extends State<SnakePath> {
  int n = 5; //number of slabs
  int x = 1;
  int currentSlab=3;
   List<Widget> _widgets=[];
  @override
  Widget build(BuildContext context) {
    _widgets=[];
    _widgets.add(Padding(
                padding: const EdgeInsets.all(8)+EdgeInsets.only(top: 40),
                child: CustomPaint(
                  child: Container(),
                  foregroundPainter: PathOverlayPainter(),
                  painter: PathPainter(),
                ),
              ),);
    x=1;
    
    for(int index=1;index<=n;index++)
    {
      if (index % 2 == 0) {
                    //int tempName = index;
                    int tempName = x;
                    x += 2;
                    var firstSlab;
                    if(tempName==currentSlab)
                    firstSlab=CurrentSlab(index: tempName,);
                    else 
                    {
                      if(tempName<currentSlab)
                      firstSlab=CompletedSlab(index: tempName,);
                      else 
                      firstSlab=IncompleteSlab(index: tempName,);
                    }
                   tempName++;
                    var secondSlab;
                    if(tempName==currentSlab)
                    secondSlab=CurrentSlab(index: tempName,);
                    else 
                    {
                      if(tempName<currentSlab)
                      secondSlab=CompletedSlab(index: tempName,);
                      else 
                      secondSlab=IncompleteSlab(index: tempName,);
                    }
     
        _widgets.add(

        Positioned(
          left: 30,
          top: index!=0?(index*125).toDouble():100,
          child: firstSlab)
        );
         _widgets.add(

        Positioned(
          left: 200,
          top: index!=0?(index*125).toDouble():100,
          child: secondSlab)
        );
    }
    else
    {
      //int tempName = index;
                    var firstSlab;
                    int tempName = x;
                    x += 2;
                    if(tempName==currentSlab)
                    firstSlab=CurrentSlab(index: tempName,);
                    else 
                    {
                      if(tempName<currentSlab)
                      firstSlab=CompletedSlab(index: tempName,);
                      else 
                      firstSlab=IncompleteSlab(index: tempName,);
                    }
                   tempName++;
                    var secondSlab;
                    if(tempName==currentSlab)
                    secondSlab=CurrentSlab(index: tempName,);
                    else 
                    {
                      if(tempName<currentSlab)
                      secondSlab=CompletedSlab(index: tempName,);
                      else 
                      secondSlab=IncompleteSlab(index: tempName,);
                    }
     
        _widgets.add(

        Positioned(
          left: 60,
          top: index!=0?(index*125).toDouble():100,
          child: secondSlab)
        );
         _widgets.add(

        Positioned(
          left: 260,
          top: index!=0?(index*125).toDouble():100,
          child: firstSlab)
        );
    }
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          centerTitle: true,
          title: Text(
            
            "Redemption Scheme and history",style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.white,
        body: Container(
          
          child: SingleChildScrollView(
            child: AspectRatio(
              aspectRatio: MediaQuery.of(context).size.aspectRatio,
              
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints)
                {
                  return Stack(
                    alignment: AlignmentDirectional.topStart,
                    children:
                    _widgets
                     
                  );
                }
                
              ),
            ),
          ),
        ),
      ),
    );
  }
  
}


class CompletedSlab extends StatelessWidget {
  final int? index;
  const CompletedSlab({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(),
        child: Stack(children: <Widget>[
          Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(198, 244, 244, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(100, 100)),
                  )),
          
          
          Positioned(
            top: 10,
            left: 10,
            child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(60, 191, 174, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(80, 80)),
                  )),),
          
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
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.3333333333333333),
              )),
        ]));
  }
}
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
                    color: Color.fromRGBO(196, 196, 196, 1),
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
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.3333333333333333),
              )),
        ]));
  }
}
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
                        0 /*percentages not used in flutter. defaulting to zero*/,
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
                        0 /*percentages not used in flutter. defaulting to zero*/,
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


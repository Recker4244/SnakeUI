import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:poc/model/path_data.dart';
import 'package:poc/helper/completed_path_painter.dart';
import 'package:poc/helper/path_painter.dart';
import 'package:poc/widgets/completed_slab.dart';
import 'package:poc/widgets/current_slab.dart';
import 'package:poc/widgets/incomplete_slab.dart';

class SnakePath extends StatefulWidget {
  @override
  _SnakePathState createState() => _SnakePathState();
}

class _SnakePathState extends State<SnakePath> {
  
  
  late PathData _pathData;
  @override
  void initState() {
    super.initState();
    _pathData=PathData.fromJson({"total_slab": 18,
  "current_slab": 3,
  "slab_progress": 43});
  
  }
   List<Widget> _widgets=[];
  @override
  Widget build(BuildContext context) {
    int n=(_pathData.totalSlab!/2).ceil();
    int x=1;
    int currentSlab=_pathData.currentSlab!;
    _widgets=[];
    _widgets.add(Padding(
                padding: const EdgeInsets.all(8)+EdgeInsets.only(top: 00),
                child: CustomPaint(
                  child: Container(),
                  foregroundPainter: PathOverlayPainter(completed: _pathData.currentSlab!-1),
                  painter: PathPainter(total: _pathData.totalSlab!),
                ),
              ),);
    x=1;
    
    for(int index=0;index<n;index++)
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
        if(tempName<=_pathData.totalSlab!)
        _widgets.add(

        Positioned(
          left: 60,
          top: index!=0?index*120:0,
          child: secondSlab)
        );
        if(tempName-1<=_pathData.totalSlab!)
         _widgets.add(
        
        Positioned(
          left: 260,
          top: index!=0?index*120:0,
          child: firstSlab)
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
        if(tempName-1<=_pathData.totalSlab!)
        _widgets.add(

        Positioned(
          left: 30,
          top: index!=0?(index*120).toDouble():50,
          child: firstSlab)
        );
        if(tempName<=_pathData.totalSlab!)
         _widgets.add(

        Positioned(
          left: 200,
          top: index!=0?(index*120).toDouble():50,
          child: secondSlab)
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
            child:Container(
              height: _pathData.totalSlab!*70,
              //aspectRatio: MediaQuery.of(context).size.aspectRatio,
              
              child: Stack(
                    //alignment: AlignmentDirectional.center,
                    children:
                    _widgets
                     
                  )
              // LayoutBuilder(
              //   builder: (BuildContext context, BoxConstraints constraints)
              //   {
              //     return Stack(
              //       //alignment: AlignmentDirectional.center,
              //       children:
              //       _widgets
                     
              //     );
              //   }
                
              // ),
            ),
          ),
        ),
      ),
    );
  }
  
}






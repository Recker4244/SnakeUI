import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:poc/view/path.dart';

class SnakeUI extends StatefulWidget {
  const SnakeUI({Key? key}) : super(key: key);

  @override
  State<SnakeUI> createState() => _SnakeUIState();
}

class _SnakeUIState extends State<SnakeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SnakePath(),);
  }
}
import 'dart:math';

import 'package:flutter/material.dart';

class ColorfulScreen extends StatelessWidget {
  final int row;
  final int col;

  const ColorfulScreen({Key? key, required this.row, required this.col})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    var cellWidth = screenWidth / col;
    var cellHeight = screenHeight / row;

    return Scaffold(
      body: Wrap(
        children: List.generate(row * col, (index) {
          return Container(
            width: cellWidth,
            height: cellHeight,
            color: Color.fromARGB(
              Random().nextInt(255),
              Random().nextInt(255),
              Random().nextInt(255),
              1,
            ),
          );
        }),
      ),
    );
  }
}

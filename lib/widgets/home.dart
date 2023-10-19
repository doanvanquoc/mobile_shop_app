import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return buildHomePage(col: 5, row: 5);
  }

  GridView buildHomePage({required int col, required int row}) {
    var ran = Random();
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: col),
      itemCount: col * row,
      itemBuilder: (context, index) {
        return Container(
          color: Color.fromRGBO(
              ran.nextInt(255), ran.nextInt(255), ran.nextInt(255), 1),
          margin: const EdgeInsets.all(5),
        );
      },
    );
  }
}

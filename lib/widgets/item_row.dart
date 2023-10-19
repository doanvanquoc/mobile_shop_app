import 'dart:math';

import 'package:flutter/cupertino.dart';

class ItemRow extends StatelessWidget {
  ItemRow({super.key, required this.col, required this.width});
  var col;
  var width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (width - col * 20) / col,
      height: 100,
      margin: const EdgeInsets.all(10),
      color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
          Random().nextInt(255), 1),
    );
  }
}

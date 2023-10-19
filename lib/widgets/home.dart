import 'package:flutter/material.dart';
import 'package:mobile_shop_app/widgets/item_row.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: buildHomePage(col: 3, row: 4, width: width),
    );
  }

  Widget buildHomePage(
      {required int col, required int row, required double width}) {
    return Column(
        children: List.generate(row, (index) => buildItemRow(col, width)));
  }

  Widget buildItemRow(int col, double width) {
    return Row(
      children: List.generate(
        col,
        (index) {
          return ItemRow(col: col, width: width);
        },
      ),
    );
  }
}

import "package:flutter/material.dart";
import 'package:intl/intl.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  final List<int> numOfProd = [10, 15, 12, 18, 20, 22, 25, 23, 21, 19, 17, 16];

  final List<int> totalOrder = [
    1000000,
    1500000,
    1200000,
    1800000,
    2000000,
    2200000,
    2500000,
    2300000,
    2100000,
    1900000,
    1700000,
    1600000
  ];

  int get totalExpense =>
      totalOrder.reduce((value, element) => value + element);

  int get totalProd => numOfProd.reduce((value, element) => value + element);

  String get formattedTotalExpense {
    final formatCurrency = NumberFormat('#,###', 'vi_VN');
    return formatCurrency.format(totalExpense);
  }

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "THỐNG KÊ TÀI CHÍNH",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              _isExpanded
                  ? const Icon(
                      Icons.expand_less,
                      color: Colors.black,
                      size: 22,
                    )
                  : const Icon(
                      Icons.expand_more,
                      color: Colors.black,
                      size: 22,
                    ),
            ],
          ),
        ),
        const SizedBox(height: 7),
        if (_isExpanded)
          Container(
            padding: const EdgeInsets.all(9),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Số lượng sản phẩm đã mua:",
                    style: TextStyle(
                      color: Color.fromARGB(255, 91, 99, 108),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "$totalProd",
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Số đơn hàng thành công:",
                    style: TextStyle(
                      color: Color.fromARGB(255, 91, 99, 108),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "$totalProd",
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Tổng chi tiêu:",
                    style: TextStyle(
                      color: Color.fromARGB(255, 91, 99, 108),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "$formattedTotalExpense VND",
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}

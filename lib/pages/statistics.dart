import "package:fl_chart/fl_chart.dart";
import "package:flutter/material.dart";

import "../models/product.dart";

class ThongKeScreen extends StatefulWidget {
  const ThongKeScreen({Key? key}) : super(key: key);

  @override
  State<ThongKeScreen> createState() => _ThongKeScreenState();
}

List<Product> viewedProducts = [
  Product(name: "Áo sơ mi", imageUrl: "assets/img/avatar.jpg", price: 200000),
  Product(name: "Quần jean", imageUrl: "assets/img/avatar.jpg", price: 350000),
  Product(name: "Quần jeans", imageUrl: "assets/img/avatar.jpg", price: 350000),
  Product(
      name: "Quần jeansss", imageUrl: "assets/img/avatar.jpg", price: 400000),
  Product(name: "Quần a", imageUrl: "assets/img/avatar.jpg", price: 550000),
  Product(name: "Quần b", imageUrl: "assets/img/avatar.jpg", price: 350000),
  Product(name: "Quần c", imageUrl: "assets/img/avatar.jpg", price: 350000),
];

class _ThongKeScreenState extends State<ThongKeScreen> {
  final List<int> soLuongDonHang = [
    10,
    15,
    12,
    18,
    20,
    22,
    25,
    23,
    21,
    19,
    17,
    16
  ];

  final List<double> tongGiaTriDonHang = [
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

  final int soLuotTruyCap = 100;

  String loaiThongKe = "Số lượng đơn hàng";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "THỐNG KÊ",
          style: TextStyle(color: Color.fromARGB(255, 232, 229, 222)),
        ),
        backgroundColor: const Color.fromARGB(255, 87, 99, 89),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text("Thống kê theo: "),
                  DropdownButton<String>(
                    value: loaiThongKe,
                    items: const [
                      DropdownMenuItem(
                        value: "Số lượng đơn hàng",
                        child: Text("Số lượng đơn hàng"),
                      ),
                      DropdownMenuItem(
                        value: "Tổng giá trị đơn hàng",
                        child: Text("Tổng giá trị đơn hàng"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        loaiThongKe = value!;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 300,
                child: BarChart(
                  BarChartData(
                    barTouchData: getBarTouchData(),
                    alignment: BarChartAlignment.spaceAround,
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            if (value >= 0 && value < 12) {
                              return Text((value + 1).toInt().toString());
                            }
                            return const Text('');
                          },
                          reservedSize: 22,
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                    barGroups:
                        List.generate(12, (index) => createBarGroup(index)),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Sản phẩm đã xem",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: viewedProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Card(
                        color: const Color.fromARGB(255, 241, 238, 241),
                        child: Column(
                          children: [
                            Image.asset(
                              viewedProducts[index].imageUrl,
                              width: 100,
                              height: 100,
                            ),
                            Text(
                              viewedProducts[index].name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 5,
                              ),
                            ),
                            Text("${viewedProducts[index].price.toInt()}đ"),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Số lượt truy cập trong ngày: $soLuotTruyCap",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BarChartGroupData createBarGroup(int groupIndex) {
    return BarChartGroupData(
      x: groupIndex,
      barRods: [createBarRod(groupIndex)],
    );
  }

  BarChartRodData createBarRod(int groupIndex) {
    Color barColor;

    if (loaiThongKe == "Số lượng đơn hàng") {
      barColor = const Color.fromARGB(255, 48, 52, 87);
    } else {
      barColor = const Color.fromARGB(255, 129, 36, 31);
    }

    return BarChartRodData(
      toY: loaiThongKe == "Số lượng đơn hàng"
          ? soLuongDonHang[groupIndex].toDouble()
          : tongGiaTriDonHang[groupIndex],
      color: barColor,
    );
  }

  BarTouchData getBarTouchData() {
    if (loaiThongKe == "Số lượng đơn hàng") {
      return BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: const Color.fromARGB(255, 215, 222, 214),
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(color: Color.fromARGB(255, 129, 36, 31)),
            );
          },
        ),
      );
    } else {
      return BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: const Color.fromARGB(255, 215, 222, 214),
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(color: Color.fromARGB(255, 48, 52, 87)),
            );
          },
        ),
      );
    }
  }
}

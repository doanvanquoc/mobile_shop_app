import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with TickerProviderStateMixin {
  //
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Nhập tên sản phẩm cần tìm kiếm',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: const Icon(Icons.search),
          ),
        ),
        const SizedBox(height: 10),
        TabBar(
          tabs: const [Text('Đang giao'), Text('Đã giao'), Text('Đã huỷ')],
          controller: tabController,
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: const [
              //Code 1 hàm buildOrder thôi, truyền vào các tham số cần thiết, rồi gọi hàm đó trong 3 Widget này (bọc trong Coulmn)
              Text('Thay widget này bằng 2 đơn hàng đang giao'),
              Text('Thay widget này bằng 2 đơn hàng đã giao'),
              Text('Thay widget này bằng 2 đơn hàng đã huỷ')
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with TickerProviderStateMixin {
  // //Tạo tab controller
  // late TabController tabController;

  // @override
  // void initState() {
  //   tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'DANH SÁCH ĐƠN HÀNG',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          //Tạo search box
          TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8),
              hintText: 'Nhập tên sản phẩm cần tìm kiếm',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              suffixIcon: const Icon(Icons.search),
            ),
          ),
          const SizedBox(height: 10),
          //Tạo tabbar
          const TabBar(
            tabs: [Text('Đang giao'), Text('Đã giao'), Text('Đã huỷ')],
            // controller: tabController,
          ),
          //Tạo tabbarview
          SizedBox(
            height: height > width ? height * 0.5 : width * 0.5,
            child: TabBarView(
              // controller: tabController,
              children: [
                ListView(
                  children: [
                    buildOrder(
                        'B0101',
                        '12/5/2099',
                        '- Nokia Ultra Plus Infinity \n- Samsung Galaxy DeepDark \n- Xiaomi Redmi Note 6',
                        '20000000',
                        'Đang Giao',
                        context),
                    buildOrder(
                        'B0101',
                        '12/5/2099',
                        '- Nokia Ultra Plus Infinity \n- Samsung Galaxy DeepDark \n- Xiaomi Redmi Note 6',
                        '20000000',
                        'Đang Giao',
                        context),
                    buildOrder(
                        'B0101',
                        '12/5/2099',
                        '- Nokia Ultra Plus Infinity \n- Samsung Galaxy DeepDark \n- Xiaomi Redmi Note 6',
                        '20000000',
                        'Đang Giao',
                        context),
                    buildOrder(
                        'A177013',
                        '5/5/2099',
                        '- Nokia SuS \n- Samsung Galaxy DeepLight \n- Iphone 15 Pro Max',
                        '1000',
                        'Đang Giao',
                        context),
                    ElevatedButton(
                      child: Text(
                        'Tải thêm',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                ListView(
                  children: [
                    buildOrder(
                        'D2101',
                        '12/5/2099',
                        '- Nokia Ultra Plus Infinity \n- Samsung Galaxy DeepDark \n- Xiaomi Redmi Note 6',
                        '20000000',
                        'Đã Giao',
                        context),
                    buildOrder(
                        'E98013',
                        '5/5/2099',
                        '- Nokia SuS \n- Samsung Galaxy DeepLight \n- Iphone 15 Pro Max',
                        '6000',
                        'Đã Giao',
                        context),
                    ElevatedButton(
                      child: Text(
                        'Tải thêm',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                ListView(
                  children: [
                    buildOrder(
                        'B0101',
                        '12/5/2099',
                        '- Nokia Ultra Plus Infinity \n- Samsung Galaxy DeepDark \n- Iphone 12',
                        '20000000',
                        'Đã Hủy',
                        context),
                    buildOrder(
                        'A177013',
                        '5/5/2099',
                        '- Nokia SuS \n- Samsung Galaxy DeepLight \n- Iphone 13',
                        '1 Jack',
                        'Đã Hủy',
                        context),
                    ElevatedButton(
                      child: Text(
                        'Tải thêm',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildOrder(String idOrder, String dateOrder, String infoDS,
    String totalCost, String status, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(245, 251, 234, 184),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Mã hóa đơn: $idOrder\nNgày lập hóa đơn: $dateOrder",
            style: Theme.of(context).textTheme.titleMedium,
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(thickness: 1),
          const Text("DS sản phẩm:"),
          Text(
            infoDS,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(),
          Text(
            "Thành tiền: $totalCost",
            style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    ),
  );
}

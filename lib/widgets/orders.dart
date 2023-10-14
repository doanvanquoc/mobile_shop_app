import 'package:flutter/material.dart';
import 'package:mobile_shop_app/main.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with TickerProviderStateMixin {
  //Tạo tab controller
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
        //Tạo search box
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
        //Tạo tabbar
        TabBar(
          tabs: const [Text('Đang giao'), Text('Đã giao'), Text('Đã huỷ')],
          controller: tabController,
        ),
        //Tạo tabbarview
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Column(
                children: [
                  buildOrder(
                      'B0101',
                      '12/5/2099',
                      '- Nokia Ultra Plus Infinity \n- Samsung Galaxy DeepDark \n- Con Mèo Mập Địt',
                      '20000000',
                      'Đang Giao'),
                  buildOrder(
                      'A177013',
                      '5/5/2099',
                      '- Nokia SuS \n- Samsung Galaxy DeepLight \n- Con Mèo Ốm Địt',
                      '1000',
                      'Đang Giao')
                ],
              ),
              //Code 1 hàm buildOrder thôi, truyền vào các tham số cần thiết, rồi gọi hàm đó trong 3 Widget này (bọc trong Coulmn. 1 Column truyền 2 cái buildOrder)
              Column(
                children: [
                  buildOrder(
                      'D2101',
                      '12/5/2099',
                      '- Nokia Ultra Plus Infinity \n- Samsung Galaxy DeepDark \n- Con Mèo Mập Địt',
                      '20000000',
                      'Đã Giao'),
                  buildOrder(
                      'E98013',
                      '5/5/2099',
                      '- Nokia SuS \n- Samsung Galaxy DeepLight \n- Con Mèo Ốm Địt',
                      '6000',
                      'Đã Giao')
                ],
              ),
              Column(
                children: [
                  buildOrder(
                      'B0101',
                      '12/5/2099',
                      '- Nokia Ultra Plus Infinity \n- Samsung Galaxy DeepDark \n- Con Mèo Mập Địt',
                      '20000000',
                      'Đã Hủy'),
                  buildOrder(
                      'A177013',
                      '5/5/2099',
                      '- Nokia SuS \n- Samsung Galaxy DeepLight \n- Con Mèo Ốm Địt',
                      '1 Jack',
                      'Đã Hủy')
                ],
              ),
            ],
          ),
        ),
        ElevatedButton(
          child: Text('Tải thêm'),
          onPressed: () {},
        )
      ],
    );
  }
}

Widget buildOrder(String ID_Order, String dateOrder, String infoDS,
    String totalCost, String status) {
  return Container(
    padding: EdgeInsets.all(1.0),
    child: Row(
      children: <Widget>[
        Expanded(
            child: Row(
          children: <Widget>[
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  color: Color.fromARGB(245, 251, 234, 184)),
              margin: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Mã hóa đơn: " +
                            ID_Order +
                            "\nNgày lập hóa đơn: " +
                            dateOrder,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(), color: Colors.white),
                                child: Column(children: [
                                  Text(
                                    status,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  )
                                ]),
                              )
                            ]),
                      ))
                    ],
                  ),
                  const Divider(),
                  Text("DS sản phẩm:"),
                  Text(
                    infoDS,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  const Divider(),
                  Text(
                    "Thành tiền: " + totalCost,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            )),
          ],
        ))
      ],
    ),
  );
}

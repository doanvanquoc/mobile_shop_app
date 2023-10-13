import 'package:flutter/material.dart';

class CartDetailPage extends StatelessWidget {
  const CartDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ĐƠN HÀNG'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Tin nhắn'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Tài khoản'),
        ],
        currentIndex: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            buildCartDetail(
                'assets/img/iPhone14.jpg', 'Iphone 0', '0789', 'Da Giao'),
            const Divider(),
            buildCartDetail(
                'assets/img/iPhone12.jpg', 'Iphone 1', '1234', 'Chua Giao'),
            const Divider(),
            buildCartDetail('assets/img/iPhone14.jpg', 'Nokia Uptra Super Plus',
                '6666', 'Dang Giao'),
            const Divider(),
          ],
        ),
      ),
    );
  }

  Widget buildCartDetail(
      String urlImage, String infoType, String info, String status) {
    String img = urlImage;
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: 170.0,
      child: Row(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(50.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage(img), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      infoType,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      info,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ))
            ],
          ))
        ],
      ),
    );
  }
}

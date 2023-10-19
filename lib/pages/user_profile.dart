import 'package:flutter/material.dart';
import 'package:mobile_shop_app/widgets/drawer.dart';
import 'package:mobile_shop_app/widgets/list_entry.dart';
import 'package:mobile_shop_app/widgets/orders.dart';
import 'package:mobile_shop_app/widgets/statistics.dart';
import 'package:mobile_shop_app/widgets/user_info.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Thông Tin Cá Nhân'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              // UserInfo(),
              // SizedBox(
              //   height: 20,
              // ),
              // Statistics(),
              // SizedBox(height: 20),
              // Orders(),
              ListEntry()
            ],
          ),
        ),
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Cá nhân'),
        ],
      ),
    );
  }
}

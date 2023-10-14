import 'package:flutter/material.dart';
import 'package:mobile_shop_app/widgets/orders.dart';
import 'package:mobile_shop_app/widgets/drawer.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Thông Tin Cá Nhân'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Orders(),
      ),
      drawer: const MyDrawer(),
    );
  }
}

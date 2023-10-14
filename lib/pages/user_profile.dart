import 'package:flutter/material.dart';
import 'package:mobile_shop_app/widgets/orders.dart';
import 'package:mobile_shop_app/widgets/user_info.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Thông Tin Cá Nhân'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                UserInfo(),
                SizedBox(
                  height: 20,
                ),
                Expanded(child: Orders()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

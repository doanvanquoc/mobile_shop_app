import 'package:flutter/material.dart';
import 'package:mobile_shop_app/widgets/orders.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Thông Tin Cá Nhân'),
      ),
      body: const Padding(padding: EdgeInsets.all(8.0), child: Orders()),
    );
  }

  Widget buildUserInfo(String infoType, String info) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(infoType),
          Row(
            children: [
              Text(info),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}

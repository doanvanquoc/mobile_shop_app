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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            UserInfo(),
            SizedBox(
              height: 20,
            ),
            Flexible(child: Orders(), fit: FlexFit.loose,),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:mobile_shop_app/pages/order_list.dart';
import 'package:mobile_shop_app/pages/user_info.dart';
=======
import 'package:mobile_shop_app/pages/user_profile.dart';
import 'package:mobile_shop_app/widgets/orders.dart';
>>>>>>> master

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Shop App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
<<<<<<< HEAD
      //home: const UserInfoPage(),
      initialRoute: "/",
      routes: {
        "/": (context) => const UserInfoPage(),
        "/orderlist": (context) => const OderListPage(),
      },
=======
      home: const UserProfilePage(),
>>>>>>> master
    );
  }
}

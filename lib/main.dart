import 'package:flutter/material.dart';
import 'package:mobile_shop_app/pages/user_profile.dart';
import 'package:mobile_shop_app/widgets/orders.dart';

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
      home: const UserProfilePage(),
    );
  }
}

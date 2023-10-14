import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Đoàn Văn Quốc"),
            accountEmail: const Text("doanvanquoc@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/img/th.jpg'),
              ),
            ),
            decoration: const BoxDecoration(color: Colors.amber),
          ),
          const ListTile(
            leading: Icon(Icons.house),
            title: Text("Trang chủ"),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text("Cài đặt"),
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text("Đăng xuất"),
          )
        ],
      ),
    );
  }
}

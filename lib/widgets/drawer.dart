import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Nguyễn Văn A"),
            accountEmail: const Text("nguyenvana@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  "https://anhdep123.com/wp-content/uploads/2021/02/anh-avatar-hai-huoc.jpg",
                  height: 100.0,
                  width: 100.0,
                ),
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

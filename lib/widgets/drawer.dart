import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    "Nguyễn Văn A",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  accountEmail: Text(
                    "nguyenvana@gmail.com",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
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
                  leading: Icon(Icons.home),
                  title: Text("Trang chủ"),
                ),
                const ListTile(
                  leading: Icon(Icons.shopping_bag),
                  title: Text("Giỏ hàng"),
                ),
                const ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Cài đặt"),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Đăng xuất"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

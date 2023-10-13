import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: const ListTile(
              leading: CircleAvatar(
                child: Text('Q'),
              ),
              title: Text('Đoàn Văn Quốc'),
              subtitle: Text('Hạng Kim Cương'),
            ),
          )),
          const ListTile(
            title: Text(
              'Trang chủ',
              style: TextStyle(color: Colors.grey),
            ),
            leading: Icon(Icons.home),
          ),
          const ListTile(
            title: Text(
              'Cài đặt',
              style: TextStyle(color: Colors.grey),
            ),
            leading: Icon(Icons.settings),
          ),
          const ListTile(
            title: Text(
              'Đăng xuất',
              style: TextStyle(color: Colors.grey),
            ),
            leading: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}

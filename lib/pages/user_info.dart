import 'package:flutter/material.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Thông Tin Cá Nhân'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Tin nhắn'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Tài khoản'),
        ],
        currentIndex: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //Container Avatar, Tên và Hạng
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: const ListTile(
                leading: CircleAvatar(
                  child: Text('Q'),
                ),
                title: Text('Đoàn Văn Quốc'),
                subtitle: Text('Hạng Kim Cương'),
              ),
            ),
            const SizedBox(height: 20),
            buildUserInfo('Họ tên', 'Đoàn Văn Quốc'),
            const Divider(),
            buildUserInfo('SĐT', '0388780052'),
            const Divider(),
            buildUserInfo('Địa chỉ', 'Tân Bình'),
            const Divider(),
            buildUserInfo('Email', 'vanquoc.dev@gmail.com'),
            const Divider(),
            buildUserInfo('Ngày sinh', '27/06/2003'),
            const SizedBox(height: 20),
            buildButton('Thông tin thống kê'),
            buildButton('Danh sách đơn hàng'),
          ],
        ),
      ),
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

  Widget buildButton(String buttonInfo) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(buttonInfo),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

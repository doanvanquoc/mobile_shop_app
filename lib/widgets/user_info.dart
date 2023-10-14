import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[100],
      height: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 50,
              child: Text(
                "Q",
                style: TextStyle(fontSize: 20),
              ),
            ),
            info(
              "Nguyễn Văn A",
              "nguyenvana",
              DateTime(2003, 5, 23).toString().substring(0, 10),
              1,
              "0938523503",
            )
          ],
        ),
      ),
    );
  }

  Column info(String tenHienThi, String tenDangNhap, String ngaySinh,
      int gioiTinh, String sdt) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tên hiển thị: $tenHienThi",
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          "Tên đăng nhập: $tenDangNhap",
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          "Ngày sinh: $ngaySinh",
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          "Giới tính: ${gioiTinh == 1 ? "Nam" : "Nữ"}",
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          "SĐT: $sdt",
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber.shade200,
          borderRadius: BorderRadius.circular(20)),
      height: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 50,
              child: Text(
                "Q",
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: info(
                  "Nguyễn Văn A",
                  "nguyenvana",
                  DateTime(2003, 5, 23).toString().substring(0, 10),
                  1,
                  "0938523503",
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(overflow: TextOverflow.ellipsis)),
            )
          ],
        ),
      ),
    );
  }

  Column info(String tenHienThi, String tenDangNhap, String ngaySinh,
      int gioiTinh, String sdt,
      {required TextStyle textStyle}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Họ tên: $tenHienThi",
          style: textStyle,
        ),
        Text(
          "Tên đăng nhập: $tenDangNhap",
          style: textStyle,
        ),
        Text(
          "Ngày sinh: $ngaySinh",
          style: textStyle,
        ),
        Text(
          "Giới tính: ${gioiTinh == 1 ? "Nam" : "Nữ"}",
          style: textStyle,
        ),
        Text(
          "SĐT: $sdt",
          style: textStyle,
        ),
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../models/entry.dart';
class ListEntry extends StatelessWidget {
  const ListEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber[100],
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListTile(
            title: const Text("Tiêu đề"),
            subtitle: const Text("Tóm tắt 01"),
            leading: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              child: Image.asset(
                "assets/img/avatar.jpg",
                //fit: BoxFit.cover,
              ),
            ),
            
          )),
    );
  }
}
List<Entry> viewEntry = [
  Entry(img: "", title: "", desc: ""),
  Entry(img: "", title: "", desc: ""),
  Entry(img: "", title: "", desc: ""),
  Entry(img: "", title: "", desc: ""),
  Entry(img: "", title: "", desc: ""),
  Entry(img: "", title: "", desc: ""),
];


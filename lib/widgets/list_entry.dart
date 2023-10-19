import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../models/entry.dart';
import 'entry.dart';

class ListEntry extends StatefulWidget {
  const ListEntry({super.key});

  @override
  State<ListEntry> createState() => _ListEntryState();
}

List<Entry> viewEntry = [
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt1"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt2"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt3"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt4"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt5"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt6"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt1"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt2"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt3"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt4"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt5"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt6"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt1"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt2"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt3"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt4"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt5"),
  Entry(img: "assets/img/avatar.jpg", title: "Tiêu đề", desc: "Tóm tắt6"),
];

class _ListEntryState extends State<ListEntry> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
            children:
                viewEntry.map((entry) => entryWidget(entry: entry)).toList()));
  }
}

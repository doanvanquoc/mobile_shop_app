import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../models/entry.dart';

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

class entryWidget extends StatefulWidget {
  entryWidget({
    super.key,
    required this.entry,
  });
  var entry;

  @override
  State<entryWidget> createState() => _entryWidgetState();
}

class _entryWidgetState extends State<entryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber[100],
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              title: Text(widget.entry.title),
              subtitle: Text(widget.entry.desc),
              leading: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Image.asset(
                  widget.entry.img,
                ),
              ),
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../models/entry.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

List<Entry> viewEntry = [
  Entry(img: "assets/img/durian.png", title: "title", desc: "desc"),
  Entry(img: "assets/img/durian.png", title: "title", desc: "desc"),
  Entry(img: "assets/img/durian.png", title: "title", desc: "desc"),
  Entry(img: "assets/img/durian.png", title: "title", desc: "desc"),
  Entry(img: "assets/img/durian.png", title: "title", desc: "desc"),
  Entry(img: "assets/img/durian.png", title: "title", desc: "desc"),
  Entry(img: "assets/img/durian.png", title: "title", desc: "desc"),
];

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: viewEntry.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  leading: Image.network(viewEntry[index].img),
                  title: Text(viewEntry[index].title),
                  subtitle: Text(viewEntry[index].desc),
                ),
              );
            }),
      ),
    );
  }
}

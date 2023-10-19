import 'package:flutter/material.dart';

import '../models/entry.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

List<Entry> viewEntry = [
  Entry(img: "assets/img/durian.png", title: "Tiêu đề nè", desc: "Mô tả nè"),
  Entry(img: "assets/img/durian.png", title: "Tiêu đề nè", desc: "Mô tả nè"),
  Entry(img: "assets/img/durian.png", title: "Tiêu đề nè", desc: "Mô tả nè"),
  Entry(img: "assets/img/durian.png", title: "Tiêu đề nè", desc: "Mô tả nè"),
  Entry(img: "assets/img/durian.png", title: "Tiêu đề nè", desc: "Mô tả nè"),
  Entry(img: "assets/img/durian.png", title: "Tiêu đề nè", desc: "Mô tả nè"),
  Entry(img: "assets/img/durian.png", title: "Tiêu đề nè", desc: "Mô tả nè"),
];

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 229, 222),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
          scrollDirection: Axis.vertical,
          itemCount: viewEntry.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: Image.asset(viewEntry[index].img),
                  title: Text(
                    viewEntry[index].title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(viewEntry[index].desc),
                ),
              ),
            );
          }),
    );
  }
}

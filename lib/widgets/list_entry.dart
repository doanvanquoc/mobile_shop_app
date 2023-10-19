import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../models/entry.dart';

class ListEntry extends StatelessWidget {
  const ListEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        
      ],)
    );
  }

  Container entryMethod( Stringgit c) {
    return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadiugit 
      color: Colors.amber[100]git 
    ),
    child: Padding(
        padding: const EdgeInsegit 
        child: ListTile(
          title: const Text("Tigit 
          subtitle: const Text(git 
          leading: ClipRRect(
            borderRadius: constgit ular(50)),
            child: Image.asset(git 
              "assets/img/avatar.jpg",
              //fit: BoxFit.cover,
            ),
          ),
        )),
  );
  }

List<Entry> viewEntry = [
  Entry(img: "", title: "", desc: ""),
  Entry(img: "", title: "", desc: ""),
  Entry(img: "", title: "", desc: ""),
  Entry(img: "", title: "", desc: ""),
  Entry(img: "", title: "", desc: ""),
  Entry(img: "", title: "", desc: ""),
];

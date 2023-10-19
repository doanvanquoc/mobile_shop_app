import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../models/entry.dart';

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

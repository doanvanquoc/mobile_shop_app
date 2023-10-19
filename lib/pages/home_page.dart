import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo App"),
        actions: [
          Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.star));
          }),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.list),
                    title: Text("List"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

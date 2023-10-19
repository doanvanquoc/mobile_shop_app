import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/item_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobile Shop App',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          fontFamily: GoogleFonts.openSans().fontFamily,
        ),
        home: const ColorfulScreen(col: 5, row: 4));
  }
}

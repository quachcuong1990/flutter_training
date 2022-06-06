import 'package:flutter/material.dart';
import 'package:practice_200lab/pages/downloading_page.dart';
import 'package:practice_200lab/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DownloadPage(),
    );
  }
}


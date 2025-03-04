import 'package:flutter/material.dart';
import 'package:receipt_scanner_tool/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 93, 69, 135)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

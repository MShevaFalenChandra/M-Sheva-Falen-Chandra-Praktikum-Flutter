import 'package:flutter/material.dart';
import 'combobox1.dart';
import 'combobox02.dart';
import 'combobox03.dart';
import 'gambar01.dart ';
import 'image02.dart';
import 'image03.dart';
import 'image04.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Praktikum 03',
      home: Image04(),
    );
  }
}

import 'package:flutter/material.dart';

class Combobox01 extends StatefulWidget {
  const Combobox01({super.key}) : super();

  @override
  State<Combobox01> createState() => _Combobox01State();
}

class _Combobox01State extends State<Combobox01> {
  String? pilihitem;
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh Combobox'),
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton<String>(
              hint: const Text('Pilih Item'),
              value: pilihitem,
              onChanged: (String? pilihanya) {
                setState(() {
                  pilihitem = pilihanya;
                });
              },
              items: items.map<DropdownMenuItem<String>>((String isi) {
                return DropdownMenuItem<String>(
                  value: isi,
                  child: Text(isi),
                );
              }).toList(),
              ),
            Text('Pilihan Anda: $pilihitem',
              style: const TextStyle(fontSize: 40),
            ),
          ]
        ),
      ),
    );
  }
}

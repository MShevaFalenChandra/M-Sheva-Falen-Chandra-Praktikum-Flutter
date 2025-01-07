import 'package:flutter/material.dart';

class Combobox02 extends StatefulWidget {
  const Combobox02({super.key}) : super();

  @override
  State<Combobox02> createState() => _Combobox02State();
}

class _Combobox02State extends State<Combobox02> {
  String? pilihKategori;
  String? pilihItem;

  final List<String> categories = ['Buah', 'Sayur'];

  final Map<String, List<String>> items = {
    'Buah': ['Apel', 'Jeruk', 'Pisang', 'Anggur'],
    'Sayur': ['Bayam', 'Kangkung', 'Tomat', 'Kubis'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Combobox Bersarang'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: pilihKategori,
              hint: const Text('Pilih Kategori'),
              onChanged: (String? newValue) {
                setState(() {
                  pilihKategori = newValue;
                  pilihItem = null;
                });
              },
              items: categories.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: pilihItem,
              hint: const Text('Pilih Item'),
              onChanged: (String? newValue) {
                setState(() {
                  pilihItem = newValue;
                });
              },
              items: pilihKategori != null
                  ? items[pilihKategori!]!
                      .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList()
                  : [],
            )
          ],
        ),
      ),
    );
  }
}

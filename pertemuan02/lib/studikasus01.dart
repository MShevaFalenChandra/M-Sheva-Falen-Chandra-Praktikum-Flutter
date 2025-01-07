import 'package:flutter/material.dart';

class Studikasus01 extends StatefulWidget {
  const Studikasus01({super.key});

  @override
  _Studikasus01State createState() => _Studikasus01State();
}

class _Studikasus01State extends State<Studikasus01> {
  final TextEditingController _nilaiController1 = TextEditingController();
  final TextEditingController _nilaiController2 = TextEditingController();
  bool _tambahChecked = false;
  bool _kurangChecked = false;
  String _result = ''; // Menyimpan hasil operasi

  void _hitung() {
    // Mengambil input dari TextEditingControllers
    double? nilai1 = double.tryParse(_nilaiController1.text);
    double? nilai2 = double.tryParse(_nilaiController2.text);

    // Memeriksa apakah input valid
    if (nilai1 != null && nilai2 != null) {
      setState(() {
        _result = ''; // Mengosongkan hasil sebelumnya

        // Melakukan operasi berdasarkan pilihan checkbox
        if (_tambahChecked) {
          _result += 'Hasil Penjumlahan: ${nilai1 + nilai2}\n';
        }
        if (_kurangChecked) {
          _result += 'Hasil Pengurangan: ${nilai1 - nilai2}\n';
        }
        if (!_tambahChecked && !_kurangChecked) {
          _result = 'Silakan pilih operasi.';
        }
      });
    } else {
      setState(() {
        _result = 'Input tidak valid. Mohon masukkan angka.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Operasi Matematika',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _nilaiController1,
                        decoration: InputDecoration(
                          labelText: 'Masukkan Angka Pertama',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: _nilaiController2,
                        decoration: InputDecoration(
                          labelText: 'Masukkan Angka Kedua',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    CheckboxListTile(
                      title: const Text('Hitung Penjumlahan'),
                      value: _tambahChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _tambahChecked = value ?? false;
                        });
                      },
                      secondary: const Icon(Icons.add_circle, color: Colors.blue),
                    ),
                    const Divider(height: 1),
                    CheckboxListTile(
                      title: const Text('Hitung Pengurangan'),
                      value: _kurangChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _kurangChecked = value ?? false;
                        });
                      },
                      secondary: const Icon(Icons.remove_circle, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _hitung,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Hitung',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  _result,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue[800],
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

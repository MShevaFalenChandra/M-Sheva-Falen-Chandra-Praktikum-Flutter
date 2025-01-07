import 'package:flutter/material.dart';

class Image02 extends StatelessWidget {
  const Image02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menampilkan Gambar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('lib/assets/gambar1.jpg'),
            Image.asset('lib/assets/gambar2.jpg'),
            Image.asset('lib/assets/gambar3.jpg'),
            Image.asset('lib/assets/gambar4.jpg'),
            Image.asset('lib/assets/gambar5.jpg'),
          ],
        ),
      ),
    );
  }
}

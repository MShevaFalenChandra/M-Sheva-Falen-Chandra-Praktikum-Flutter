import 'package:flutter/material.dart';

class Image03 extends StatelessWidget {
  const Image03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menampilkan Gambar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildImageCard('lib/assets/gambar1.jpg', Colors.red),
            buildImageCard('lib/assets/gambar2.jpg', Colors.green),
            buildImageCard('lib/assets/gambar3.jpg', Colors.blue),
            buildImageCard('lib/assets/gambar4.jpg', Colors.yellow),
            buildImageCard('lib/assets/gambar5.jpg', Colors.orange),
          ],
        ),
      ),
    );
  }
}

Widget buildImageCard(String imagePath, Color color) {
  return Container(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    ),
  );
}

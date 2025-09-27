import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ini Halaman Tujuan",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Untuk berpindah ke halaman baru, gunakan metode Navigator.push(). "
              "Metode push() akan menambahkan Route ke dalam tumpukan Route yang dikelola oleh Navigator. "
              "Route ini dapat dibuat secara custom atau menggunakan MaterialPageRoute, "
              "yang memiliki animasi transisi sesuai dengan platform yang digunakan.\n\n",
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            Image.asset(
              "assets/icon/beach.png", // ganti sesuai gambar yang kamu punya
              width: 120,
            ),
            const SizedBox(height: 30),
            const Text(
              "Untuk menutup halaman kedua dan kembali ke halaman pertama, gunakan metode Navigator.pop(). "
              "Metode pop() akan menghapus Route saat ini dari tumpukan Route yang dikelola oleh Navigator.",
               style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.justify,
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("< Kembali ke home"),
            ),
          ],
        ),
      ),
    );
  }
}

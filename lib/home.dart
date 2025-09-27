import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ini Halaman Home",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Banyak aplikasi memiliki beberapa layar untuk menampilkan informasi yang berbeda. "
              "Contohnya, ada layar produk, dan ketika pengguna memilih produk, akan muncul layar "
              "dengan detail produk tersebut.",
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            Image.asset(
              "assets/icon/house.png", // ganti sesuai gambar yang kamu punya
              width: 120,
            ),
            const SizedBox(height: 30),
            const Text(
              "Pertama, kita perlu membuat dua halaman atau 'routes' yang ingin kita tampilkan. "
              "Selanjutnya, kita gunakan perintah Navigator.push() untuk berpindah dari halaman pertama "
              "ke halaman kedua. Ini seperti kita membuka halaman baru. "
              "Terakhir, kita bisa kembali dari halaman kedua ke halaman pertama menggunakan Navigator.pop(). "
              "Seperti menutup halaman kedua dan kembali ke halaman pertama.",
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/tujuan');
              },
              child: const Text("Ke halaman tujuan >"),
            ),
          ],
        ),
      ),
    );
  }
}

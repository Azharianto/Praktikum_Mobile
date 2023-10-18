import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                  './assets/profil.png'), // Ganti dengan path gambar profil Anda
            ),
            SizedBox(height: 20.0),
            Text(
              'Achmad Azharianto', // Ganti dengan nama Anda
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'achmad azharianto@gmail.com', // Ganti dengan alamat email Anda
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20.0),
            Text(
              'Website Kacamata merangkul keanekaragaman gaya dan kebutuhan. Kami memahami bahwa setiap individu adalah unik, dan itulah sebabnya kami menawarkan berbagai macam pilihan kacamata, mulai dari kacamata retro yang trendi hingga desain futuristik yang inovatif. Kacamata bukan lagi hanya alat koreksi penglihatan; mereka adalah aksesori mode yang memungkinkan Anda mengekspresikan diri.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center, // Untuk membuat teks menjadi tengah
            ),
            // Tambahkan informasi tambahan tentang Anda di sini
          ],
        ),
      ),
    );
  }
}

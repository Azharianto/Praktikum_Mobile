import 'package:flutter/material.dart';
import 'kacamata_page.dart';
import 'about_page.dart';

void main() {
  runApp(KacamataStoreApp());
}

class KacamataStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kacamata Store',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.grey
      ),
      home: KacamataPage(), // Mengatur halaman utama ke KacamataPage
    );
  }
}

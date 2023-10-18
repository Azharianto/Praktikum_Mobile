import 'package:flutter/material.dart';

class ProdukPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk Kacamata'),
      ),
      body: ListView(
        children: <Widget>[
          _buildProductItem(
            './assets/kacamata1.jpg',
            'Kacamata Bulat 1',
            'Harga: Rp 10.000',
            context,
          ),
          _buildProductItem(
            './assets/kacamata2.jpg',
            'Kacamata Bulat 2',
            'Harga: Rp 10.000',
            context,
          ),
          _buildProductItem(
            './assets/kacamata4.jpg',
            'Kacamata Bulat 3',
            'Harga: Rp 10.000',
            context,
          ),
          _buildProductItem(
            './assets/kacamata5.jpg',
            'Kacamata Bulat 4',
            'Harga: Rp 10.000',
            context,
          ),
          _buildProductItem(
            './assets/kacamata6.jpg',
            'Kacamata Bulat 4',
            'Harga: Rp 10.000',
            context,
          ),
          // Tambahkan item-produk lain di sini dengan format yang sama jika diperlukan
          SizedBox(height: 100), // Untuk memberikan ruang di bawah item produk.
        ],
      ),
    );
  }

  ListTile _buildProductItem(
    String imageAsset,
    String productName,
    String price,
    BuildContext context,
  ) {
    return ListTile(
      leading: Image.asset(
        imageAsset,
        width: 100,
        height: 100,
      ),
      title: Text(
        productName,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        price,
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
      trailing: ElevatedButton(
        onPressed: () {
          _showPurchaseDialog(context);
        },
        child: Text('Beli'),
      ),
    );
  }

  void _showPurchaseDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Isi Informasi Pembelian'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Nama'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Nomor HP'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Alamat'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Lakukan sesuatu dengan informasi yang diisi, seperti mengirim pesanan.
                Navigator.of(context).pop();
              },
              child: Text('Beli'),
            ),
          ],
        );
      },
    );
  }
}

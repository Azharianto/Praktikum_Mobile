import 'package:flutter/material.dart';
import 'produk_page.dart';
import 'about_page.dart';

class KacamataPage extends StatelessWidget {
  void _navigateToProdukPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProdukPage()),
    );
  }

  void _navigateToAboutPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AboutPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kacamata Store'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _navigateToAboutPage(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/awal.jpg"),
            ),
           ),
         ),
            ElevatedButton(
              onPressed: () {
                _navigateToProdukPage(context);
              },
              child: Text('Lihat Produk'),
            ),
          ],
        ),
      ),
    );
  }
}

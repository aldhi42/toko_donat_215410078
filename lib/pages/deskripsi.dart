import 'package:flutter/material.dart';

class Deskripsi extends StatefulWidget {
  final String imagePath;
  final String name;
  final double price;
  final int starRating;

  Deskripsi({
    required this.imagePath,
    required this.name,
    required this.price,
    required this.starRating,
  });

  @override
  State<Deskripsi> createState() => _DeskripsiState();
}

class _DeskripsiState extends State<Deskripsi> {
  int _jumlahDibeli = 1; // Jumlah yang dibeli, defaultnya 1

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Deskripsi'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              widget.imagePath,
              height: 200, // Sesuaikan tinggi gambar sesuai kebutuhan
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Harga: \$${widget.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Jumlah yang dibeli:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (_jumlahDibeli > 1) {
                              _jumlahDibeli--;
                            }
                          });
                        },
                      ),
                      Text(
                        _jumlahDibeli.toString(),
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            _jumlahDibeli++;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Logika ketika tombol beli ditekan
                      // Misalnya, tampilkan pesan konfirmasi atau tambahkan item ke keranjang belanja
                    },
                    child: Text('Beli'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

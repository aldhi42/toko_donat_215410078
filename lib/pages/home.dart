import 'package:flutter/material.dart';
import 'package:toko_donat_215410078/items/list_menu.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 76, 22),
        elevation: 0,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: 25,
              ),
            ),
            Text(
              'TOKO DONAT KITA',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 18, 63, 19),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.shopping_cart,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.green,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                padding: EdgeInsets.all(10), // Padding untuk memberikan ruang di sekitar konten
                decoration: BoxDecoration(
                  color: Colors.white, // Warna latar belakang kontainer
                  borderRadius: BorderRadius.circular(10), // Membuat sudut kontainer menjadi melengkung
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey
                          .withOpacity(0.5), // Warna bayangan kontainer
                      spreadRadius: 2, // Penyebaran bayangan
                      blurRadius: 5, // Blur radius bayangan
                      offset:
                          Offset(0, 3), // Offset bayangan (dari atas ke bawah)
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Varian Rasa Donat', // Judul kategori
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height:10), // Spasi vertikal antara judul dan baris kategori
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                Icons.donut_small,
                                size: 50,
                                color: Colors.brown,
                              ),
                            ),
                            Text('Coklat'),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                Icons.donut_small,
                                size: 50,
                                color: Colors.yellow[700],
                              ),
                            ),
                            Text('Manis'),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                Icons.donut_small,
                                size: 50,
                                color: Colors.green[700],
                              ),
                            ),
                            Text('Kacang'),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                Icons.donut_small,
                                size: 50,
                                color: Colors.orange[700],
                              ),
                            ),
                            Text('Keju'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                child: Column(
                  children: [
                    InkWell(
                      child: Stack(
                        children: [
                          DonutItem(
                            onTap: () { 
                              Navigator.pushReplacementNamed(context, "Deskripsi");
                            },
                            imagePath: 'images/Black.png',
                            name: 'Black Jack',
                            price: 2.50,
                            starRating: 4, 
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: GestureDetector(
                              onTap: () {
                                // Aksi yang akan diambil saat tombol keranjang diklik
                                // Tambahkan logika untuk menambahkan produk ke keranjang di sini
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors
                                      .blue, // Warna latar belakang tombol
                                ),
                                child: Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.white, // Warna ikon
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Aksi yang akan diambil saat item diklik
                      },
                      child: DonutItem(
                        imagePath: 'images/Caviar.png',
                        name: 'Caviar Chocolate',
                        price: 2.00,
                        starRating: 5, onTap: () {  },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Aksi yang akan diambil saat item diklik
                      },
                      child: DonutItem(
                        imagePath: 'images/Coco.png',
                        name: 'Coco Loco',
                        price: 2.75,
                        starRating: 3, onTap: () {  },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Aksi yang akan diambil saat item diklik
                      },
                      child: DonutItem(
                        imagePath: 'images/Copa.png',
                        name: 'Copa Banana',
                        price: 2.50,
                        starRating: 4, onTap: () {  },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Aksi yang akan diambil saat item diklik
                      },
                      child: DonutItem(
                        imagePath: 'images/Crunchy.png',
                        name: 'Crunchy Crunchy',
                        price: 2.00,
                        starRating: 5, onTap: () {  },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Aksi yang akan diambil saat item diklik
                      },
                      child: DonutItem(
                        imagePath: 'images/Glazzy.png',
                        name: 'Glazzy',
                        price: 2.75,
                        starRating: 3, onTap: () {  },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Aksi yang akan diambil saat item diklik
                      },
                      child: DonutItem(
                        imagePath: 'images/Jacky.png',
                        name: 'Jacky Chunk',
                        price: 2.00,
                        starRating: 5, onTap: () {  },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Aksi yang akan diambil saat item diklik
                      },
                      child: DonutItem(
                        imagePath: 'images/Sugar.png',
                        name: 'Sugar Ice',
                        price: 2.75,
                        starRating: 3, onTap: () {  },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



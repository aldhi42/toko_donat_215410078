import 'package:flutter/material.dart';
import 'package:toko_donat_215410078/pages/welcome.dart';
import 'package:toko_donat_215410078/pages/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => Welcome(),
        "Home" :(context) => Home(),
        
      },
    );
  }
}

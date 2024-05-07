import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Selamat datang ditoko kami",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 34, 10),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Image.asset(
                "images/logo.png",
                height: 400,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Beli sekarang ",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 34, 10),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, "Home");
              },
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromARGB(255, 0, 34, 10),
                ),
                child: Text(
                  "Lanjut",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

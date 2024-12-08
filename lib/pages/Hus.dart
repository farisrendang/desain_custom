import 'package:appalah/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Tug());
}

class Tug extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: Text("Aktivitas"),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/empty_state.png'),
              SizedBox(height: 20),
              Text(
                "Masih kosong nih...",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Cek Semua Layanan dan buat transaksi pertamamu!",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                ),
                child: Text(
                  "CEK SEMUA LAYANAN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNav(1),
      ),
    );
  }
}
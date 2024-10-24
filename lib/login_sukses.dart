import 'package:flutter/material.dart';

class LoginSukses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/Profile');
    });

    return Scaffold(
      body: Center(
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Sudut lebih halus
          ),
          backgroundColor: Colors.lightGreen[50], // Warna latar belakang lebih lembut
          content: Column(
            mainAxisSize: MainAxisSize.min, // Sesuaikan ukuran dialog
            children: [
              Icon(
                Icons.celebration_rounded,
                color: Colors.greenAccent[700],
                size: 80, // Ukuran ikon yang besar
              ),
              const SizedBox(height: 20),
              Text(
                'Selamat Datang!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87, // Warna teks judul
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                'Gilang Bagus Tri Pambudi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54, // Warna teks nama
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

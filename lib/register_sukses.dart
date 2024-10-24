import 'package:flutter/material.dart';

class RegisterSukses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/');
    });

    return Scaffold(
      body: Center(
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.lightBlue[50], // Warna latar belakang lebih lembut
          content: Column(
            mainAxisSize: MainAxisSize.min, // Ukuran dialog disesuaikan dengan konten
            children: [
              Icon(
                Icons.check_circle_outline,
                color: Colors.greenAccent[700],
                size: 80,
              ),
              const SizedBox(height: 20),
              Text(
                'Pendaftaran Berhasil!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87, // Warna teks lebih kontras
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                'Selamat, akun Anda telah berhasil didaftarkan.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54, // Warna teks untuk deskripsi
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

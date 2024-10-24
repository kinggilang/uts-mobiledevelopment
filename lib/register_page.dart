import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100, color: Colors.blueAccent),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Nama Lengkap', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Konfirmasi Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,'/registersukses');
              },
              child: Text('Submit'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context,'/login');
                },
                child: Text(
                  'Sudah punya akun? Login',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
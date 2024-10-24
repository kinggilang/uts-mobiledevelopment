import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/foto1.jpg'),
            ),
            const SizedBox(height: 20),
            itemProfile('Nama', 'Gilang Bagus Tri Pambudi', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('No Telp', '081359534239', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile('Alamat', 'Banyuwangi, Indonesia', CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile('Email', 'bagusgilang233@gmail.com', CupertinoIcons.mail),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    exit(0);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Keluar')
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData, color: Colors.blueAccent),
        tileColor: Colors.white,
      ),
    );
  }
}

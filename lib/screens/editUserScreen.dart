import 'package:flutter/material.dart';
import 'package:tgs2_responsi/screens/profileScreen.dart';

import '../widgets/widget.dart';

class EditProfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profil"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardProfil(),
              TextForm(
              txtTop: 'Masukkan Email',
              labelTxt: 'Email',
              ),
              TextForm(
              txtTop: 'Masukkan Nama',
              labelTxt: 'Nama',
              ),
              TextForm(
              txtTop: 'Masukkan Nomor Telepon',
              labelTxt: 'Nomor Telepon',
              ),
              TextForm(
              txtTop: 'Masukkan Alamat',
              labelTxt: 'Alamat',
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(220, 55),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Ubah Profil',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
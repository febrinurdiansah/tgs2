import 'package:flutter/material.dart';
import '../widgets/widget.dart';
import 'loginScreen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 252,
                height: 96,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Image.asset(
                  'assets/imgs/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Daftar',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextForm(
                txtTop: 'Masukkan Email',
                labelTxt: 'Email',
              ),
              SizedBox(height: 15),
              TextForm(
                txtTop: 'Masukkan Password',
                labelTxt: 'Password',
              ),
              SizedBox(height: 15),
              TextForm(
                txtTop: 'Masukkan Kembali Password',
                labelTxt: 'Password',
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sudah Punya akun ?'),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        'Masuk',
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                child: Container(
                  width: 218,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      'Daftar',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

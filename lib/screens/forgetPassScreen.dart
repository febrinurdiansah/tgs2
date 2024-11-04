import 'package:flutter/material.dart';
import 'package:tgs2_responsi/widgets/widget.dart';

import 'loginScreen.dart';

class ForgetPassScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 252,
                height: 96,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Image.asset('assets/imgs/logo.png',
                  fit: BoxFit.cover,
                  ),
              ),
              Text('Lupa Password',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  'Pesan',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Masukan email anda dan tunggu kode etik akan dikirim'),
                ],
              ),
              SizedBox(height: 40),
              TextForm(txtTop: 'Masukan Email', labelTxt: 'Email'),
              SizedBox(height: 100),
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
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Text('Kirim',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white
                          ),
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
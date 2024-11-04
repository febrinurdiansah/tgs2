import 'package:flutter/material.dart';
import 'package:tgs2_responsi/main.dart';
import 'package:tgs2_responsi/screens/forgetPassScreen.dart';
import 'package:tgs2_responsi/screens/registerScreen.dart';
import '../widgets/widget.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 252,
                height: 96,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Image.asset('assets/imgs/logo.png',
                  fit: BoxFit.cover,
                  ),
              ),
              Text('Masuk',
                style: TextStyle(
                  fontSize: 50,
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
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Belum Punya akun ?'),
                      InkWell(
                        onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassScreen()));
                      },
                        child: Text('Lupa Password ?',
                          style: TextStyle(
                            color: Colors.blue
                          ),
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                    child: Text('Daftar',
                      style: TextStyle(
                        color: Colors.blue
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()));
                      },
                child: Container(
                  width: 218,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: Text('Masuk',
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
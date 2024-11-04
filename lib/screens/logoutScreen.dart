import 'package:flutter/material.dart';
import 'package:tgs2_responsi/screens/loginScreen.dart';

class LogoutScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
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
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: Text('Keluar Akun',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white
                      ),
                    ),
                ),
              ),
            ),
      ),
    );
  }
}
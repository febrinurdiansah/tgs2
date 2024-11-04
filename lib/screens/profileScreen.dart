import 'package:flutter/material.dart';

import 'editUserScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          children: [
            CardProfil(),
            SizedBox(height: 15,),
            TextTile(
              txt: 'Kelola Akun',
              func: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilScreen()));
              },
            ),
            TextTile(
              txt: 'Notifikasi',
              func: () {
                //a
              },
            ),
            TextTile(
              txt: 'Privacy Policy',
              func: () {
                //a
              },
            ),
            TextTile(
              txt: 'Terms of Service',
              func: () {
                //a
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CardProfil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 200,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network('https://picsum.photos/250?image',
              fit: BoxFit.cover,
              height: 120,
              width: 115,
              ),
          ),
          SizedBox(height: 10),
          Text('Nama Lengkap',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              ),
            ),
          SizedBox(height: 5),
          Text('Asal Universitas',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class TextTile extends StatelessWidget {
  final String txt;
  final Function func;

  const TextTile({required this.txt, required this.func});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(txt),
      trailing: Icon(Icons.arrow_forward),
      onTap: func as void Function(),
    );
  }
}

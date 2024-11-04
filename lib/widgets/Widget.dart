import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final String txtTop;
  final String labelTxt;

  const TextForm({required this.txtTop, required this.labelTxt});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txtTop,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 8),
        TextFormField(
          maxLines: 1,
          decoration: InputDecoration(
            labelText: labelTxt,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue),
            ),
            fillColor: Colors.white,
            filled: true,
          ),
        ),
      ],
    );
  }
}
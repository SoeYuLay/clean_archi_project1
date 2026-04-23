import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  String fieldName;
  String hintText;
  AuthTextField({super.key, required this.fieldName, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fieldName, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
        const SizedBox(height: 10),
        TextField(
          obscureText: fieldName.toLowerCase() == 'password' ? true : false,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8)),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
      ],
    );
  }
}

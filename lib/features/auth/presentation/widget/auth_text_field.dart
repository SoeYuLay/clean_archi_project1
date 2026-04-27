import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String fieldName;
  final String hintText;
  final TextEditingController controller;
  const AuthTextField({super.key, required this.controller, required this.fieldName, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fieldName, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
        const SizedBox(height: 10),
        TextField(
          controller: controller,
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

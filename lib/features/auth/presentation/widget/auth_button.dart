import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed; 
  const AuthButton({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: Colors.blueAccent
      ),
      onPressed: onPressed, 
      child: Text(buttonText, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white))
    );
  }
}
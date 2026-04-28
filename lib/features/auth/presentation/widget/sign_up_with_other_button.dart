import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpWithOtherButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const SignUpWithOtherButton({super.key, required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: Colors.white,
      ),
      icon: SvgPicture.asset('assets/images/GoogleIcon.svg'),
      onPressed: onPressed, 
      label: Text(buttonText, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))
    );
  }
}
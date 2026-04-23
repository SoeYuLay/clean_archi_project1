import 'package:clean_archi_project1/features/auth/presentation/widget/auth_button.dart';
import 'package:clean_archi_project1/features/auth/presentation/widget/auth_text_field.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(child: Text('Sign In', style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500))),
              const SizedBox(height: 20),
              AuthTextField(fieldName: 'Email Address', hintText: 'Enter your email'),
              const SizedBox(height: 20),
              AuthTextField(fieldName: 'Password', hintText: 'Enter your password'),
              const SizedBox(height: 30),
              AuthButton(buttonText: 'Sign In'),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New User?'),
                  TextButton(
                    onPressed: (){}, 
                    child: Text('Create Account', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
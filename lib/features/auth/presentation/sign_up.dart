import 'package:clean_archi_project1/features/auth/presentation/widget/auth_button.dart';
import 'package:clean_archi_project1/features/auth/presentation/widget/auth_text_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
              Center(child: Text('Register Account', style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500))),
              const SizedBox(height: 20),
              AuthTextField(fieldName: 'Email Address', hintText: 'Enter your email'),
              const SizedBox(height: 20),
              AuthTextField(fieldName: 'Password', hintText: 'Enter your password'),
              const SizedBox(height: 30),
              AuthButton(buttonText: 'Sign Up'),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: (){}, 
                    child: Text('Sign In', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
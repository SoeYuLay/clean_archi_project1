import 'package:clean_archi_project1/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:clean_archi_project1/features/auth/presentation/bloc/auth_bloc_event.dart';
import 'package:clean_archi_project1/features/auth/presentation/bloc/auth_bloc_state.dart';
import 'package:clean_archi_project1/features/auth/presentation/widget/auth_button.dart';
import 'package:clean_archi_project1/features/auth/presentation/widget/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<AuthBloc, AuthBlocState>(
          listener: (context, state) {
            state.whenOrNull(
              authenticated: (user){
                context.go('/DailyNews');
              },
              failure: (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.deepOrange,
                  content: Text(error)),
              );
              },
            );
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Text('Sign In',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500))),
                    const SizedBox(height: 20),
                    AuthTextField(
                        controller: emailController,
                        fieldName: 'Email Address',
                        hintText: 'Enter your email'),
                    const SizedBox(height: 20),
                    AuthTextField(
                        controller: passwordController,
                        fieldName: 'Password',
                        hintText: 'Enter your password'),
                    const SizedBox(height: 30),
                    state.maybeWhen(
                      loading: () => const CircularProgressIndicator(),
                      orElse: () => AuthButton(
                      buttonText: 'Sign In',
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthBlocEvent.signIn(email: emailController.text, password: passwordController.text));
                      },
                    ),),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text('Forgot Password?',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.blueAccent))),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('New User?'),
                          TextButton(
                              onPressed: () => context.go('/SignUp'),
                              child: Text('Create Account',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black)))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

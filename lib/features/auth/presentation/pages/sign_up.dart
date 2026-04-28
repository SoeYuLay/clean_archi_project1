import 'package:clean_archi_project1/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:clean_archi_project1/features/auth/presentation/bloc/auth_bloc_event.dart';
import 'package:clean_archi_project1/features/auth/presentation/bloc/auth_bloc_state.dart';
import 'package:clean_archi_project1/features/auth/presentation/widget/auth_button.dart';
import 'package:clean_archi_project1/features/auth/presentation/widget/auth_text_field.dart';
import 'package:clean_archi_project1/features/auth/presentation/widget/sign_up_with_other_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
    void dispose(){
      emailController.dispose();
      passwordController.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
       
    return Scaffold(
      backgroundColor: Colors.white,
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
                        child: Text('Register Account',
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
                      buttonText: 'Sign Up',
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthBlocEvent.signUp(email: emailController.text, password: passwordController.text));
                      },
                    ),),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(child: Divider(color: Colors.grey,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('Or', style: TextStyle(color: Colors.grey)),
                        ),
                        Expanded(child: Divider(color: Colors.grey,)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SignUpWithOtherButton(
                      onPressed: (){
                        context.read<AuthBloc>().add(AuthBlocEvent.signUpWithGoogle());
                      }, 
                      buttonText: 'Continue with Google'),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'),
                          TextButton(
                              onPressed: () => context.go('/SignIn'),
                              child: Text('Sign In',
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

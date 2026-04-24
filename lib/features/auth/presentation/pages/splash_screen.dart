import 'package:clean_archi_project1/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:clean_archi_project1/features/auth/presentation/bloc/auth_bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthBlocState>(
      listener: (context, state) {
        
        state.maybeWhen(
          authenticated: (user){
            context.go('/DailyNews');
          },
          orElse: (){
            context.go('/SignIn');
          });
      },
      child: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

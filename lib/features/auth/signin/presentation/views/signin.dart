import 'package:flutter/material.dart';
import 'package:todo_app/features/auth/signin/presentation/views/widgets/signin_body.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SigninBody(),
    );
  }
}
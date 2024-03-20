import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:pizaa/components/text_field.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Boxicons.bx_lock_open,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Food Delivery App',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextField(
                controller: emailController,
                hintText: 'Enter your email address',
                obscureText: false),
            const SizedBox(
              height: 15,
            ),
            MyTextField(
                controller: passwordController,
                hintText: 'Input password',
                obscureText: true),
          ],
        ),
      ),
    );
  }
}

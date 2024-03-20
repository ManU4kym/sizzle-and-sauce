import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:pizaa/components/my_button.dart';
import 'package:pizaa/components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
              'Create an Account',
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
            const SizedBox(
              height: 15,
            ),
            MyTextField(
                controller: confirmPasswordController,
                hintText: 'confirm password',
                obscureText: true),
            const SizedBox(
              height: 15,
            ),
            MyButton(
              text: 'Login',
              onTap: () {
                debugPrint('Around');
              }!,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already a member?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap ,
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pizaa/pages/login_page.dart';
import 'package:pizaa/pages/register_page.dart';

class LoginRegister extends StatefulWidget {
  const LoginRegister({super.key});

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  bool showLoginPage = true;
  
  void togglePage () {
     setState(() {
       showLoginPage = !showLoginPage;
     });
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePage);
    }
    return RegisterPage(onTap: togglePage);
  }
}

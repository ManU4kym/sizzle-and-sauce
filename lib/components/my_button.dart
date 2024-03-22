import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const MyButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(25),
        decoration:  BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary,
          ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

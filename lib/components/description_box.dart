import 'package:flutter/material.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.inversePrimary),
      ),
      padding: const EdgeInsets.all(25),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("\$0.332"),
              Text('Deivery fee'),
            ],
          ),
          Column(
            children: [
              Text("08:17:29"),
              Text('Delivery time'),
            ],
          ),
        ],
      ),
    );
  }
}

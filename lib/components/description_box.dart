import 'package:flutter/material.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = TextStyle(color: Theme.of(context).colorScheme.secondary);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.7)),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "\$0.332",
                style: myTextStyle,
              ),
              Text(
                'Deivery fee',
                style: myTextStyle,
              ),
              Text(
                "\$0.332",
                style: myTextStyle,
              ),
              Text(
                'Deivery fee',
                style: myTextStyle,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "08:17:29",
                style: myTextStyle,
              ),
              Text(
                'Delivery time',
                style: myTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

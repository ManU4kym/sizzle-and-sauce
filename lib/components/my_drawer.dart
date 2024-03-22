import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child:  Column(
        children: [
          Padding(
            padding: const  EdgeInsets.only(top: 100.0),
            child: Icon(Boxicons.bx_lock_open, size: 80,color: Theme.of(context).colorScheme.inversePrimary,),
          ),
        const  Divider()
        ],
      ),
    );
  }
}

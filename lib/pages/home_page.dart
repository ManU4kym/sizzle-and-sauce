import 'package:flutter/material.dart';
import 'package:pizaa/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 42, 51, 51),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Yezza'),
        backgroundColor: const Color.fromARGB(255, 42, 51, 51),
      ),
      drawer: const MyDrawer(),
    );
  }
}

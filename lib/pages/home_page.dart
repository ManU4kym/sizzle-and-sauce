import 'package:flutter/material.dart';
import 'package:pizaa/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Yezza'),
      ),
      drawer:  MyDrawer(),
    );
  }
}

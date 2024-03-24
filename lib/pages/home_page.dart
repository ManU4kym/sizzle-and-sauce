import 'package:flutter/material.dart';
import 'package:pizaa/components/my_drawer.dart';
import 'package:pizaa/components/silver_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SilverApp(
            title: const Text('title'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ],
            ),
          ),
        ],
        body: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}

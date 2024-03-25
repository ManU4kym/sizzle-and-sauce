import 'package:flutter/material.dart';
import 'package:pizaa/components/current_location.dart';
import 'package:pizaa/components/description_box.dart';
import 'package:pizaa/components/my_drawer.dart';
import 'package:pizaa/components/silver_app.dart';
import 'package:pizaa/components/tab_bar.dart';
import 'package:pizaa/model/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tabcontroller

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).colorScheme.background.withOpacity(0.9),
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverApp(
            title: MyTabBar(
              tabController: _tabController,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.background,
                ),
                const LocationCurrent(),
                const DescriptionBox(),
                const SizedBox(
                  height: 35,
                )
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemBuilder: (context, index) => Text("Sleep tight Dummy"),
              itemCount: 5,
            ),
            ListView.builder(
              itemBuilder: (context, index) => Text("Sleep tight Dummy"),
              itemCount: 9,
            ),
            ListView.builder(
              itemBuilder: (context, index) => Text("Sleep tight Dummy"),
              itemCount: 9,
            ),
            ListView.builder(
              itemBuilder: (context, index) => Text("Sleep tight Dummy"),
              itemCount: 9,
            ),
            ListView.builder(
              itemBuilder: (context, index) => Text("Sleep tight Dummy"),
              itemCount: 9,
            ),
          ],
        ),
      ),
    );
  }
}

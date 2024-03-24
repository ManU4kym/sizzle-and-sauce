import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySilverApp extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySilverApp({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      centerTitle: true,
      pinned: true,
      floating: false,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.tertiary,
      title: Text(
        'Spiny spikes Diner',
        style: GoogleFonts.dancingScript(
          fontSize: 23,
          wordSpacing: 5.8,
          letterSpacing: 2.5,
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: child,
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}

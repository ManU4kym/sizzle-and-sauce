import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationCurrent extends StatelessWidget {
  const LocationCurrent({super.key});

  void locationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Your Location"),
              content: TextField(
                decoration: const InputDecoration(hintText: "Search address"),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " Deliver Now ",
            style: GoogleFonts.afacad(
                color: Theme.of(context).colorScheme.secondary),
          ),
          GestureDetector(
            onTap: () => locationSearchBox(context),
            child: Row(
              children: [
                Text(
                  "1153 Fouba Loop",
                  style: GoogleFonts.afacad(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

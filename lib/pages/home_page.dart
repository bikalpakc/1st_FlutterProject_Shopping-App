import "package:flutter/material.dart";
import "package:flutter_catalogue/widgets/drawer.dart";
import "package:google_fonts/google_fonts.dart";

class HomePage extends StatelessWidget {
  final String name = "Bikalpa";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Text("Catalog App"),
        ),
      ),
      body: Material(
        child: Center(
          child: Container(
            child: Text(
              "Hello, $name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

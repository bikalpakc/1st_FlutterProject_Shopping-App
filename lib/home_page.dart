import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = "Bikalpa KC";
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
            child: Text("Hello, I am $name"),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

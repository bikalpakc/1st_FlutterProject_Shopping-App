import "package:flutter/material.dart";
import "package:flutter_catalogue/models/catalogue.dart";
import "package:flutter_catalogue/widgets/drawer.dart";
import "package:flutter_catalogue/widgets/item_widget.dart";
import "package:google_fonts/google_fonts.dart";

class HomePage extends StatelessWidget {
  final String name = "Bikalpa";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(4, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Text("Catalog App"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ListView.builder(
          // itemCount: CatalogModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return itemWidget(
              items: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

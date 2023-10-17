import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'dart:convert';
import "package:flutter_catalogue/models/catalogue.dart";
import "package:flutter_catalogue/widgets/drawer.dart";
import "package:flutter_catalogue/widgets/item_widget.dart";
import "package:google_fonts/google_fonts.dart";

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String name = "Bikalpa";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items = List.from(productData)
        .map<Items>((items) => Items.fromMap(items))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(4, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Text("Catalog App"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ?

            // ? ListView.builder(
            //     // itemCount: CatalogModel.items.length,
            //     itemCount: CatalogModel.items.length,
            //     itemBuilder: (context, index) {
            //       return itemWidget(
            //         items: CatalogModel.items[index],
            //       );
            //     },
            //   )

            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 5),
                itemBuilder: (context, index) {
                  var item = CatalogModel.items[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                          child: Text(
                            item.name,
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.brown,
                          ),
                        ),
                        child: Image.network(
                          item.image,
                        ),
                        footer: Container(
                          child: Text(
                            item.price.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                      ));
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(child: CircularProgressIndicator()),
      ),
      drawer: MyDrawer(),
    );
  }
}

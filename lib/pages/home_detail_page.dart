import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalogue/models/catalogue.dart';
import 'package:flutter_catalogue/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Items catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}"
                .text
                .bold
                .xl4
                .color(context.theme.colorScheme.secondary)
                .make(),
            AddToCart(
              catalog: catalog,
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h(215),
            // .h32(context),
            Expanded(
                child: VxArc(
              height: 45.0,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: context.cardColor,
                      width: context.screenWidth,
                      child: Column(
                        children: [
                          catalog.name.text.xl4
                              .color(context.accentColor)
                              .bold
                              .make(),
                          catalog.desc.text
                              .textStyle(context.captionStyle)
                              .xl
                              .make(),
                          15.heightBox,
                          Row(
                            children: [
                              Icon(CupertinoIcons.star_circle_fill,
                                      color: Colors.amber)
                                  .px16()
                                  .py8(),
                              "100% Genuine"
                                  .text
                                  .textStyle(context.captionStyle)
                                  .make()
                            ],
                          ),
                          Row(
                            children: [
                              Icon(CupertinoIcons.gift_fill, color: Colors.pink)
                                  .px16()
                                  .py8(),
                              "Cash on delivery"
                                  .text
                                  .textStyle(context.captionStyle)
                                  .make()
                            ],
                          ),
                          Row(
                            children: [
                              Icon(CupertinoIcons.calendar_circle_fill,
                                      color: Colors.blueAccent)
                                  .px16()
                                  .py8(),
                              "14 days easy return"
                                  .text
                                  .textStyle(context.captionStyle)
                                  .make()
                            ],
                          ),
                          Row(
                            children: [
                              Icon(CupertinoIcons.checkmark_shield_fill,
                                      color: Colors.green)
                                  .px16()
                                  .py8(),
                              "Bikalpa Approves"
                                  .text
                                  .textStyle(context.captionStyle)
                                  .make()
                            ],
                          )
                        ],
                      ).py64(),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

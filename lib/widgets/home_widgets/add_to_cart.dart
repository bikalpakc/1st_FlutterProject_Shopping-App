import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalogue/core/store.dart';
import 'package:flutter_catalogue/models/cart.dart';
import 'package:flutter_catalogue/models/catalogue.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Items catalog;
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
     VxState.listen(context, to: [AddMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          AddMutation(catalog);
        }
      },
      style: ButtonStyle(
          // backgroundColor: MaterialStateProperty.all(
          //     context.theme.buttonColor),
          shape: MaterialStateProperty.all(
        StadiumBorder(),
      )),
      // child: isInCart ? Icon(Icons.done) : "Add to cart".text.make(),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}

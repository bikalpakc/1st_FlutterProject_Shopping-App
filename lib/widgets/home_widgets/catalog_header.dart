import 'package:flutter/material.dart';
import 'package:flutter_catalogue/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App"
            .text
            .xl5
            .bold
            .color(context.theme.appBarTheme.backgroundColor)
            .make(),
        "Trending products"
            .text
            .xl2
            .color(context.theme.colorScheme.secondary)
            .make(),
      ],
    );
  }
}

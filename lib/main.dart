import 'package:flutter/material.dart';
import 'package:flutter_catalogue/core/store.dart';
import 'package:flutter_catalogue/models/cart.dart';
import 'package:flutter_catalogue/models/catalogue.dart';
import 'package:flutter_catalogue/pages/cart_page.dart';
import 'package:flutter_catalogue/pages/login_page.dart';
import 'package:flutter_catalogue/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';
import 'widgets/themes.dart';

void main() {
  runApp(VxState(store: MyStore(CatalogModel(), CartModel()), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}

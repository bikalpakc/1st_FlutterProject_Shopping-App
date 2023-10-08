import 'package:flutter/material.dart';
import 'package:flutter_catalogue/pages/home_page.dart';
import 'package:flutter_catalogue/pages/login_page.dart';
import 'package:flutter_catalogue/utils/Routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //home: HomePage(),
        theme: ThemeData(
            primarySwatch: Colors.brown,
            fontFamily: GoogleFonts.lato().fontFamily),
        initialRoute: "/",
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.HomeRoute: (context) => HomePage(),
          MyRoutes.LoginRoute: (context) => LoginPage()
        },);
  }
}

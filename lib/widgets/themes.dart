import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonTheme: ButtonThemeData(buttonColor: darkBluishColor),
      textTheme: TextTheme(bodySmall: TextStyle(color: darkBluishColor)),
      appBarTheme: AppBarTheme(
        color: Colors.purple,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodyMedium,
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)
          .copyWith(secondary: darkBluishColor));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      // brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      buttonTheme: ButtonThemeData(buttonColor: darkBluishColor),
      textTheme: TextTheme(bodySmall: TextStyle(color: creamColor)),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        toolbarTextStyle: Theme.of(context)
            .textTheme
            .copyWith(
              titleLarge:
                  context.textTheme.titleLarge?.copyWith(color: Colors.white),
            )
            .bodyMedium,
        titleTextStyle: Theme.of(context)
            .textTheme
            .copyWith(
              titleLarge:
                  context.textTheme.titleLarge?.copyWith(color: Colors.white),
            )
            .titleLarge,
      ),
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(primary: darkBluishColor, secondary: Colors.white));

  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}

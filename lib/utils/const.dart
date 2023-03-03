import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
ThemeMode themeMode = ThemeMode.dark;
bool get isDarkMode => themeMode == ThemeMode.dark;
}


class Constants {
  static String appName = "Worklife";

  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Color(0xff80b7a2);
  static Color darkAccent = Color(0xff80b7a2);
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(),
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff80b7a2),
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(),
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );


}

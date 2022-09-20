import 'package:ez_plant_app/constants.dart';
import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false;

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: const Color.fromARGB(255, 24, 74, 44),
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      cardColor: const Color.fromARGB(40, 24, 74, 44),
      drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.primaryColor,
        scrimColor: Colors.grey[200],
      ),
      textTheme: TextTheme(
        headline1: const TextStyle(
          color: Colors.black,
        ),
        headline2: const TextStyle(
          color: Colors.black,
        ),
        headline3: const TextStyle(
          color: Color.fromARGB(255, 24, 74, 44),
          fontWeight: FontWeight.w700,
        ),
        bodyText1: TextStyle(
          color: Colors.green[900],
          fontWeight: FontWeight.w700,
        ),
        bodyText2: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.green,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.green[900]!,
          onPrimary: Colors.green,
          secondary: Colors.blueGrey,
          onSecondary: Colors.greenAccent,
          error: Colors.red,
          onError: Colors.redAccent,
          background: Colors.green,
          onBackground: Colors.greenAccent,
          surface: Colors.amber,
          onSurface: Colors.amberAccent,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.black,
      backgroundColor: Colors.grey,
      scaffoldBackgroundColor: Colors.grey,
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: Colors.white,
        ),
        headline2: TextStyle(
          color: Colors.white,
        ),
        bodyText1: TextStyle(
          color: Colors.white,
        ),
        bodyText2: TextStyle(
          color: Colors.white,
        ),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
    );
  }
}

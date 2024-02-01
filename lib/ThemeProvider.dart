import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;

  ThemeData _lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    hintColor: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    // backgroundColor: Colors.white,

      popupMenuTheme: PopupMenuThemeData(
        color: Colors.white,
        textStyle: TextStyle(
          color: Colors.black
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0)), // Set border radius to 0 for sharp edges
        ),
      ),
  );

  ThemeData _darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,
    hintColor: Colors.amber,
    scaffoldBackgroundColor: Color(0xFF453176),

    // Add other dark theme customizations
    iconTheme: IconThemeData(
      color: Colors.white
    ),

      popupMenuTheme: PopupMenuThemeData(
        color:  Color(0xFF240b61),
        textStyle: TextStyle(
            color: Colors.white
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0)), // Set border radius to 0 for sharp edges
        ),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0)), // Set border radius to 0 for sharp edges
        ),
        backgroundColor: Color(0xFF453176),
      ),

  );
  ThemeData get lightTheme => _lightTheme;
  ThemeData get darkTheme => _darkTheme;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
  ThemeData get currentTheme => _isDarkMode ? _darkTheme : _lightTheme;

}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'ThemeProvider.dart';
import 'newStartPage.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;

  // Set the initial system navigation bar color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: brightness==Brightness.light?Color(0xFFe7bfef):Color(0xFF453176), // Change this color to your desired color
      // systemNavigationBarColor: Colors.transparent, // Change this color to your desired color
      systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
        statusBarIconBrightness: brightness==Brightness.light?Brightness.dark:Brightness.light

    ));


    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      darkTheme: Provider.of<ThemeProvider>(context).currentTheme,
      themeMode: Provider.of<ThemeProvider>(context).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      home: newStartPage(),
    );
  }
}

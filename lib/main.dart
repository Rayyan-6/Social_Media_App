import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ThemeProvider.dart';
import 'newStartPage.dart';


void main() {
  // runApp(const MyApp());
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
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   popupMenuTheme: PopupMenuThemeData(
      //     color: Colors.white,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.all(Radius.circular(0.0)), // Set border radius to 0 for sharp edges
      //     ),
      //   ),
      //   dialogTheme: DialogTheme(
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.all(Radius.circular(0.0)), // Set border radius to 0 for sharp edges
      //     ),
      //   ),
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),


      // theme: Provider.of<ThemeProvider>(context).lightTheme,
      // darkTheme: Provider.of<ThemeProvider>(context).darkTheme,
      // themeMode: Provider.of<ThemeProvider>(context).isDarkMode
      //     ? ThemeMode.dark
      //     : ThemeMode.light,

      theme: Provider.of<ThemeProvider>(context).currentTheme,
      darkTheme: Provider.of<ThemeProvider>(context).currentTheme,
      themeMode: Provider.of<ThemeProvider>(context).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,

      home: newStartPage(),
      // home: EditProfile(),
      // home: TransactionHistory(),

    );
  }
}

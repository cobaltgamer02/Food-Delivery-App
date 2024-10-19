import 'package:flutter/material.dart';
import 'package:foodel/auth/login_or_reg.dart';
import 'package:foodel/models/restaurant.dart';
import 'package:foodel/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      //theme
      ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    ),
      //restaurant
        ChangeNotifierProvider(
      create: (context) => Restaurant(),
    ),
    ],
    child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

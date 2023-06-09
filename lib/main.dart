import 'package:flutter/material.dart';
import 'package:whatsapp/screens/splash.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
         appBarTheme: AppBarTheme(color: Color(0xff128C7E)),
       ),
      home: SplashScreen(),
    );
  }
}

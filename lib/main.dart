import 'package:flutter/material.dart';
import 'package:whatsapp/homePage.dart';
import 'package:whatsapp/widgets/chatPage.dart';
import 'package:whatsapp/widgets/settingsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(color: Color(0xff075e55)),
          bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.black.withOpacity(0))),
      routes: {
        "/": (context) => HomePage(),
        "settingsPage":(context)=> SettingsPage(),
        "chatPage":(context)=> ChatPage(),
      },
    );
  }
}

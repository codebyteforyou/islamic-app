// @dart=2.9
import 'package:flutter/material.dart';
import 'package:islamic_path/view/dua_screen.dart';
import 'package:islamic_path/view/home_screen.dart';
import 'package:islamic_path/view/knowledge_screen.dart';
import 'package:islamic_path/view/prayer_screeen.dart';
import 'package:islamic_path/view/tasbih_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomeScreen(),
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        PrayerScreen.id: (context) => PrayerScreen(),
        DuaScreen.id: (context) => DuaScreen(),
        KnowlegeScreen.id: (context) => KnowlegeScreen(),
        TasbihScreen.id: (context) => TasbihScreen(),
      },
    );
  }
}

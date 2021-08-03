import 'package:flutter/material.dart';
import 'package:islamic_path/constants.dart';

class PrayerScreen extends StatelessWidget {
  static const String id = "PrayerScreen.dart";
  const PrayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        body: SafeArea(
          child: Column(
            children: [],
          ),
        ));
  }
}

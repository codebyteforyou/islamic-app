import 'package:flutter/material.dart';

class KnowlegeScreen extends StatelessWidget {
  static const String id = "knowlegeScreen";
  const KnowlegeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Center(
            child: Text(
              "This\nis\nfor\n Knowledge\nScreen",
              style: Theme.of(context).textTheme.headline2!.copyWith(height: 2),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    ));
  }
}

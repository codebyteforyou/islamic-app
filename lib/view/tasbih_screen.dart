import 'package:flutter/material.dart';

class TasbihScreen extends StatelessWidget {
  static const String id = "TasbihScreen";
  const TasbihScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Center(
            child: Text(
              "This\nis\nfor\nTasbih\nScreen",
              style: Theme.of(context).textTheme.headline2!.copyWith(height: 2),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    ));
  }
}

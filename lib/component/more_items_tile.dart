import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:islamic_path/model/topic_data.dart';
import 'package:islamic_path/view/dua_screen.dart';
import 'package:islamic_path/view/knowledge_screen.dart';
import 'package:islamic_path/view/prayer_screeen.dart';
import 'package:islamic_path/view/tasbih_screen.dart';

class MoreItemsTile extends StatelessWidget {
  final int index;
  MoreItemsTile({required this.index});

  @override
  Widget build(BuildContext context) {
    TopicData topic = TopicData();
    Size size = MediaQuery.of(context).size;
    return TextButton(
      onPressed: () {
        if (index == 0) {
          Navigator.pushNamed(context, PrayerScreen.id);
        } else if (index == 1)
          Navigator.pushNamed(context, DuaScreen.id);
        else if (index == 2)
          Navigator.pushNamed(context, KnowlegeScreen.id);
        else if (index == 3) Navigator.pushNamed(context, TasbihScreen.id);
      },
      style: TextButton.styleFrom(
          primary: Color(0xFF02475E),
          padding: EdgeInsets.only(top: 0, left: 5, right: 5)),
      child: Container(
        height: size.height * 0.12,
        width: size.width * 0.25,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(topic.getImageLink(index))),
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFF02475E).withOpacity(0.73)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 5,
              child: BlurryContainer(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                borderRadius: BorderRadius.circular(5),
                bgColor: Colors.green,
                child: Text(
                  topic.getTopicTitle(index),
                  style: TextStyle(fontFamily: "OpenSans", color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

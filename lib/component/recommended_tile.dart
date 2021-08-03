import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islamic_path/models/hadith.dart';
import 'package:islamic_path/models/hadith_capter.dart';

class RecommendedTitle extends StatefulWidget {
  const RecommendedTitle({
    Key? key,
    required this.defualtNum,
    required this.defualtImg,
  }) : super(key: key);
  final int defualtNum;
  final int defualtImg;

  @override
  _RecommendedTitleState createState() => _RecommendedTitleState();
}

class _RecommendedTitleState extends State<RecommendedTitle> {
  @override
  Hadiths hadiths = Hadiths();
  Random random = Random();
  ChapterName name = ChapterName();
  int chapterID = 0;
  int randomImgNum = 0;
  String title = "";

  void update() {
    randomImgNum = random.nextInt(50);
    if (randomImgNum == 0) {
      randomImgNum = random.nextInt(50);
    }
    title = name.getChapterName(chapterID);
    print(chapterID);
  }

  void initState() {
    Timer timer;
    timer = Timer.periodic(Duration(hours: 6), (timer) {
      setState(() {
        int index = random.nextInt(83) + 1;
        chapterID = index;
        update();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        height: size.height * 0.2,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.10),
                offset: Offset(0, 10),
                blurRadius: 20,
                spreadRadius: 2,
              )
            ]),
        child: Row(
          children: [
            Container(
              width: size.width * 0.4,
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: randomImgNum == 0
                          ? AssetImage(
                              "images/image_flower_${widget.defualtImg}.png")
                          : AssetImage(
                              "images/image_flower_${randomImgNum}.png"))),
            ),
            Container(
              width: size.width * 0.4,
              child: RichText(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                strutStyle: StrutStyle(fontSize: 12.0),
                text: TextSpan(
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 25,
                        ),
                    text: chapterID == 0
                        ? name.getChapterName(widget.defualtNum)
                        : title),
              ),
            ),
          ],
        ));
  }
}

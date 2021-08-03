import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class TopicTile extends StatelessWidget {
  const TopicTile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MainTopicTile(
          image: AssetImage("images/icon_quran.png"),
          title: "Al Quran",
          color: Color(0xFF02475E),
        ),
        MainTopicTile(
          image: AssetImage("images/icon_book.png"),
          title: "Hadith",
          color: Color(0xFF02475E),
        )
      ],
    );
  }
}

class MainTopicTile extends StatelessWidget {
  const MainTopicTile({
    Key? key,
    required this.image,
    required this.title,
    required this.color,
  }) : super(key: key);
  final ImageProvider image;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextButton(
      style: TextButton.styleFrom(
        primary: color,
      ),
      onPressed: () {},
      child: Container(
        height: size.height * 0.3,
        width: size.width * 0.41,
        decoration: BoxDecoration(
            image: DecorationImage(image: image),

            //you can change opacity with color here(I used black) for rect
            color: color.withOpacity(0.53),
            //I added some shadow, but you can remove boxShadow also.
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.43),
                offset: Offset(5.0, 5.0),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              )
            ]),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: size.height * 0.04,
              left: size.width * 0.1,
              child: BlurryContainer(
                width: size.width,
                bgColor: color,
                borderRadius: BorderRadius.circular(10),
                child: Text(
                  title,
                  style: TextStyle(
                      fontFamily: "OpenSans",
                      fontSize: 22,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

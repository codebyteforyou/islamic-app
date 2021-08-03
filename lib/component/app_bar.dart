import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class AppBarTile extends StatefulWidget {
  const AppBarTile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _AppBarTileState createState() => _AppBarTileState();
}

class _AppBarTileState extends State<AppBarTile> {
  int seletedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Future<void> _showChoiceAvatar(BuildContext context) {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlurryContainer(
                  bgColor: Colors.white,
                  height: 400,
                  child: GridView.count(
                      padding: EdgeInsets.only(top: 25),
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      crossAxisCount: 5,
                      children: List.generate(
                          20,
                          (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    seletedIndex = index;
                                  });
                                },
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundColor: seletedIndex == index
                                      ? Colors.green
                                      : Color(0xFF02475E),
                                  backgroundImage:
                                      AssetImage("images/avatar_$index.png"),
                                ),
                              ))),
                ),
              ],
            );
          });
    }

    return Container(
      margin: EdgeInsets.only(top: widget.size.height * 0.05),
      padding: EdgeInsets.symmetric(
          horizontal: widget.size.width * 0.05,
          vertical: widget.size.height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Slider();
                },
                child: Image.asset(
                  "images/menu_icon.png",
                  width: widget.size.width * 0.08,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showChoiceAvatar(context);
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xFF02475E),
                  backgroundImage: AssetImage(
                    "images/avatar_$seletedIndex.png",
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: widget.size.height * 0.02,
          ),
          Text(
            "True Scope",
            style:
                Theme.of(context).textTheme.headline2!.copyWith(fontSize: 40),
          ),
          SizedBox(
            height: widget.size.height * 0.02,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              horizontal: widget.size.width * 0.04,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.24),
                      offset: Offset(0, 10),
                      blurRadius: 50)
                ]),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "seek for knowledge",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(FeatherIcons.search),
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}

class Slider extends StatelessWidget {
  const Slider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          width: 700,
          color: Colors.blue,
        ),
      ],
    );
  }
}

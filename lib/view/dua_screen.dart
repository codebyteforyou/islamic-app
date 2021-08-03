import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:islamic_path/constants.dart';

class DuaScreen extends StatelessWidget {
  static const String id = "duaScreen";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.166),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(
                //   height: size.height * 0.15,
                //   color: Colors.grey,
                //   width: double.infinity,
                // ),
                Text(
                  "Make Dua",
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        8,
                        (index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.grey,
                              ),
                            )),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                DuasCard(
                  title:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit dolore magna aliqua.",
                  discriptions:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Ultricies mi quis hendrerit dolor magna eget est lorem. Diam quis enim lobortis scelerisque fermentum dui.",
                ),
                DuasCard(
                  title:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
                  discriptions:
                      "Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ipsum nunc aliquet bibendum enim. Nulla pharetra diam sit amet nisl suscipit adipiscing bibendum est. Eleifend donec pretium vulputate sapien nec sagittis aliquam.",
                )
              ],
            ),
          ),
        ));
  }
}

class DuasCard extends StatelessWidget {
  const DuasCard({
    Key? key,
    required this.title,
    required this.discriptions,
  }) : super(key: key);
  final String title;
  final String discriptions;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
      decoration: BoxDecoration(color: Color(0xFFF1F1F1)),
      child: Column(
        children: [
          BlurryContainer(
            bgColor: Color(0xFFF1F1F1),
            child: Text(
              title,
              style: TextStyle(
                  fontFamily: "OpenSans", fontSize: 25, color: kPrimiryColor),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          BlurryContainer(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            bgColor: Colors.teal.shade300,
            child: Text(
              discriptions,
              style: TextStyle(fontSize: 25, color: kPrimiryColor),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}

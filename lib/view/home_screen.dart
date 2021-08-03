import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:islamic_path/component/app_bar.dart';
import 'package:islamic_path/component/more_items_tile.dart';
import 'package:islamic_path/component/recommended_tile.dart';
import 'package:islamic_path/component/topic_tile.dart';

class HomeScreen extends StatelessWidget {
  static const String id = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Random random = Random();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.25),
        child: AppBarTile(size: size),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.02),
                width: double.infinity,
                color: Color(0xFFF6F6F6),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TopicTile(size: size),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        "More",
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(fontSize: 24, color: Colors.grey),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              5,
                              (index) => MoreItemsTile(
                                    index: index,
                                  )),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        "Recommended",
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(fontSize: 24, color: Colors.grey),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Column(
                        children: [
                          RecommendedTitle(
                            defualtImg: 22,
                            defualtNum: 53,
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          RecommendedTitle(
                            defualtImg: 36,
                            defualtNum: 33,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF6F6F6),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              rippleColor: Colors.teal[300]!,
              hoverColor: Colors.teal[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.teal[100]!,
              color: Colors.teal,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Favorites',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'setting',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

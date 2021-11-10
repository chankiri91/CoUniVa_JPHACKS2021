import 'package:flutter/material.dart';
import 'package:jphacks2021_a_2103/friends_list.dart';
import 'package:jphacks2021_a_2103/talk_list.dart';
import 'package:jphacks2021_a_2103/profile_page.dart';
import 'package:jphacks2021_a_2103/map_page.dart';
import 'package:jphacks2021_a_2103/bulletin_board.dart';

class Base extends StatefulWidget {
  const Base({Key? key}) : super(key: key);

  @override
  State<Base> createState() => BaseState();
}

class BaseState extends State<Base> {
  int selectedIndex = 2;

  List<Widget> bodyWidgetList = [
    SafeArea(
      child: FriendsList(),
    ),
    SafeArea(
      child: TalkList(),
    ),
    Container(
      child: MapPage(),
    ),
    Container(
      child: BulletinBoard(),
    ),
    SafeArea(
      child: ProfilePage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyWidgetList[selectedIndex],
      //Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_people),
            label: "Friends",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: "Map",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "information",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
          
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}

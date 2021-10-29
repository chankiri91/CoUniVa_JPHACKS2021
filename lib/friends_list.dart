import 'package:flutter/material.dart';

class FriendsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Friends List',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
              vertical: 28.0,
            ),
            leading: CircleAvatar(),
            title: Text("ボブ"),
          ),

Text("----------------------------------------------------------------"),

          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(),
            title: Text("背徳感"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(),
            title: Text("kiri"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(),
            title: Text("hibiki"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(),
            title: Text("JPHACKS"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Friends",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Calls",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

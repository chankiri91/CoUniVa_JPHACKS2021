import 'package:flutter/material.dart';
import 'package:jphacks2021_a_2103/chat_main.dart';
import 'package:jphacks2021_a_2103/friends_list.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({Key? key}) : super(key: key);

  @override
  State<BottomNavi> createState() => BottomNaviState();
}

class BottomNaviState extends State<BottomNavi> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Talk List',
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
      body: SafeArea(
        child: ListContents(),
      ),
      //Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "page1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "page2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "page2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "page2",
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

class ListContents extends StatelessWidget {
  const ListContents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 28.0,
            vertical: 8.0,
          ),
          leading: CircleAvatar(), //ここは ClipOvalを使って書き換える
          trailing: Text("3分前"),
          title: Text("背徳感"),
          subtitle: Text("おけ"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatMain()),
            ); // どうしてここにセミコロンがつくのか謎
          },
        ),
      ],
    );
  }
}

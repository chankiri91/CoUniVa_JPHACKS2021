import 'package:flutter/material.dart';
import 'package:jphacks2021_a_2103/chat_main.dart';

class TalkList extends StatelessWidget {
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
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
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 28.0,
            vertical: 0,
          ),
          leading: CircleAvatar(), //ここは ClipOvalを使って書き換える
          trailing: Text("6分前"),
          title: Text("kiri"),
          subtitle: Text("おっぱっぴー"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatMain()),
            ); // どうしてここにセミコロンがつくのか謎
          },
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 28.0,
            vertical: 8.0,
          ),
          leading: CircleAvatar(), //ここは ClipOvalを使って書き換える
          trailing: Text("10分前"),
          title: Text("hibiki"),
          subtitle: Text("課題終わらなくて草"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatMain()),
            ); // どうしてここにセミコロンがつくのか謎
          },
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 28.0,
            vertical: 0,
          ),
          leading: CircleAvatar(), //ここは ClipOvalを使って書き換える
          trailing: Text("30分前"),
          title: Text("ボブ"),
          subtitle: Text("絶対儲かる話あるんだけど..."),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatMain()),
            ); // どうしてここにセミコロンがつくのか謎
          },
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 28.0,
            vertical: 8.0,
          ),
          leading: CircleAvatar(), //ここは ClipOvalを使って書き換える
          trailing: Text("1時間前"),
          title: Text("JPHACKS"),
          subtitle: Text("皆さんお疲れ様です..."),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatMain()),
            ); // どうしてここにセミコロンがつくのか謎
          },
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 28.0,
            vertical: 0,
          ),
          leading: CircleAvatar(), //ここは ClipOvalを使って書き換える
          trailing: Text("1日前"),
          title: Text("ボブ"),
          subtitle: Text("絶対儲かる話あるんだけど..."),
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

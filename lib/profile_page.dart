import 'package:flutter/material.dart';
import 'package:jphacks2021_a_2103/firebase_test.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(1000,0,250,150),
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirebaseTest()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            
            Text(
              'Takashi Saito',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              ),
            Text(
              '研究室: JP研(A213)',
              style: TextStyle(fontSize: 22,)
              ),
            Text(
              'Mail: jphacksa2103@jphacks.ac.jp'
            ),
            Text('ひとこと: え、秋って廃止された...？'),
          ],
        ),
      ),
    );
  }
}

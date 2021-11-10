import 'package:flutter/material.dart';
import 'package:jphacks2021_a_2103/firebase_test.dart';

class BulletinBoard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(1000,0,250,150),
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Information',
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
      body: Container(
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return Center(
              child: ListView(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
              vertical: 28.0,
            ),
                    leading:CircleAvatar(),
                    title: Text("Item $index"),
                  ),
                ],
                
              ),
            );
          }
          ),
        ),
      ),
      );
  }
}
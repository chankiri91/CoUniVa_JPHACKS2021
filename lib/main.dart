import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jphacks2021_a_2103/firebase_test.dart';
import 'package:jphacks2021_a_2103/login_page.dart';
import 'package:jphacks2021_a_2103/map_page.dart';
import 'package:jphacks2021_a_2103/profile_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(children: <Widget>[
          ElevatedButton(
            child: Text('ログイン'),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              )
            },
          ),
          ElevatedButton(
            child: Text('プロフィール'),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              )
            },
          ),
          ElevatedButton(
            child: Text('map'),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapPage()),
              )
            },
          ),
          ElevatedButton(
            child: Text('firebase-test'),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirebaseTest()),
              )
            },
          ),
        ]),
      ),
    );
  }
}

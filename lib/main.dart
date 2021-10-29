import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jphacks2021_a_2103/login_page.dart';


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
      title: '背徳感',
      home:  LoginPage(),
    );
  }
}
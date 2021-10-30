import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jphacks2021_a_2103/base.dart';
import 'package:jphacks2021_a_2103/firebase_test.dart';

class Login extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<Login> {
  String login_Email = "";  // 入力されたメールアドレス
  String login_Password = "";  // 入力されたパスワード

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: const Color.fromARGB(1000,0,250,150),
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Log in',
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
      body: SafeArea(
        // SafeAreaはchildを画面内に収める
        child: LayoutBuilder(
          builder: (context, constraints) {
            // builderの引数としてconstraintsが渡される
            // constraintsはheightやwidth
            return SingleChildScrollView(
              // widgetが縦サイズを超えるとスクロール
              child: ConstrainedBox(
                // 引数 constraints に BoxConstraintsを指定
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                // 引数　minWidth, minHeight, maxWidth, maxHeight
                child: Padding(
                  // childに表示したい要素を指定
                  padding: const EdgeInsets.all(32.0),
                  // 四方すべてに20ピクセル
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextField(
                            cursorColor: Colors.black,
                            autofocus: true,
                            controller: null,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: const Color.fromARGB(1000,0,250,150),),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              hintText: 'mail address',
                            ),
                            onChanged: (String value) {
                              login_Email = value;
                            },
                          ),
                          const SizedBox(height: 24.0),
                          TextField(
                            cursorColor: Colors.black,
                            obscureText: true,
                            controller: null, // Controller実装必要
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: const Color.fromARGB(1000,0,250,150),),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              hintText: 'password',
                            ),
                            onChanged: (String value) {
                              login_Password = value;
                            },
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 54.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(const Color.fromARGB(1000,0,250,150),),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                          ),
                          onPressed: () async {
                            try {
                              UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                email: login_Email,
                                password: login_Password
                              );
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Base()),
                              ); // どうしてここにセミコロンがつくのか謎
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'user-not-found') {
                                print('No user found for that email.');
                              } else if (e.code == 'wrong-password') {
                                print('Wrong password provided for that user.');
                              }
                            }
                          },
                          child: const Text('Log in'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

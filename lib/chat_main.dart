import 'package:flutter/material.dart';

class ChatMain extends StatelessWidget {
  get color => null;

  @override
  Widget build(BuildContext context) {
    String rightMessage;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Chat',
          style: TextStyle(color: Colors.black),
        ),
      ),
      //body: SafeArea(
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 32.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    rightBalloon(),
                    leftBalloon(),
                    rightBalloon2(),
                    leftBalloon2(),
                    rightBalloon3(),
                    leftBalloon3(),
                  ],
                ),
              ),
            ),

            //Spacer(),

            // 下のバー
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 75,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.camera_alt_outlined),
                      iconSize: 32,
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.photo_outlined),
                      iconSize: 32,
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 21.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          autofocus: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            rightMessage = value;
                          },
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.mic_outlined),
                      iconSize: 32,
                      color: Colors.black,
                      onPressed: () {
                        print("ok.");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// RightBalloon
  Padding rightBalloon() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
            gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
                const Color.fromARGB(500, 300, 50, 175),
                const Color.fromARGB(500, 250, 100, 200),
              ],
              stops: const [
                0.0,
                1.0,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "今日ひま？",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

// LeftBalloon
  Padding leftBalloon() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: ClipOval(
                // child: Image.asset(""),
                ),
          ),
          const SizedBox(width: 16.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(300, 100, 50, 200),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "ひま",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// この先消す

// RightBalloon
Padding rightBalloon2() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 28.0),
    child: Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
          gradient: LinearGradient(
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            colors: [
              const Color.fromARGB(500, 300, 50, 175),
              const Color.fromARGB(500, 250, 100, 200),
            ],
            stops: const [
              0.0,
              1.0,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "飯行かね？",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

// LeftBalloon
Padding leftBalloon2() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 28.0),
    child: Row(
      children: <Widget>[
        CircleAvatar(
          child: ClipOval(
              // child: Image.asset(""),
              ),
        ),
        const SizedBox(width: 16.0),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(300, 100, 50, 200),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "あり",
            ),
          ),
        ),
      ],
    ),
  );
}

// RightBalloon
Padding rightBalloon3() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 28.0),
    child: Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
          gradient: LinearGradient(
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            colors: [
              const Color.fromARGB(500, 300, 50, 175),
              const Color.fromARGB(500, 250, 100, 200),
            ],
            stops: const [
              0.0,
              1.0,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "７時駅前ね！",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

// LeftBalloon
Padding leftBalloon3() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 28.0),
    child: Row(
      children: <Widget>[
        CircleAvatar(
          child: ClipOval(
              // child: Image.asset(""),
              ),
        ),
        const SizedBox(width: 16.0),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(300, 100, 50, 200),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "おけ",
            ),
          ),
        ),
      ],
    ),
  );
}

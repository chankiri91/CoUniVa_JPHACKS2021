import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
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
                            autofocus: true,
                            controller: null,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              labelText: 'mail address',
                            ),
                          ),
                          const SizedBox(height: 24.0),
                          TextField(
                            obscureText: true,
                            controller: null, // Controller実装必要
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              labelText: 'password',
                            ),
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
                            MaterialStateProperty.all(Colors.blue),
                            foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            // ボタン処理
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

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'),
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
        Text('Takashi Saito'),
        Text('Takashi Saito'),
        Text('Takashi Saito'),
        Text('Takashi Saito'),
      ],),
      ),
    );
  }
}

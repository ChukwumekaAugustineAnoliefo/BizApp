import 'package:flutter/material.dart';

class BizCardApp extends StatelessWidget {
  const BizCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bizcard"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Text('Hello'),
            _getCard(),
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('TechieChuks Flutter'),
          Text('com.github/ChukwuemekaAA'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person_outline,
              ),
              Text(
                'T: @FluttrApprentice',
              ),
            ],
          )
        ],
      ),
    );
  }
}

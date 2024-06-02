import 'package:flutter/material.dart';

class BizCardApp extends StatelessWidget {
  const BizCardApp({super.key});

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.red.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'TechieChuks Flutter',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Text(
            'com.github/ChukwuemekaAA',
          ),
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

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(50.0),
          ),
          border: Border.all(
            color: Colors.redAccent,
            width: 1.2,
          ),
          image: const DecorationImage(
            image: NetworkImage(
              'https://miro.medium.com/max/1200/0*TMrBkQSx9t87IxkC',
            ),
            fit: BoxFit.cover,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bizcard",
        ),
      ),
      //  backgroundColor: Colors.pinkAccent,
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            const Text(
              'Hello',
            ),
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }
}

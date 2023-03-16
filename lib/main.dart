import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: BallPage(),
  ),
  );
}
class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(
          child: Text('ASK ME ANYTHING'),
        ),
      ),
      body: Ball(),
    );
  }
}
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int BN=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: (){
        setState(() {
          BN = Random().nextInt(5)+1;
        });
      }, 
          child: Image.asset('images/ball$BN.png'),
    ),
    );
  }
}


import 'package:flutter/material.dart';

class Qutoes extends StatelessWidget {
  const Qutoes({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        height: 300,
        color: Colors.yellow,
        child: const Text('Qutoes'),
      ),
    );
  }
}
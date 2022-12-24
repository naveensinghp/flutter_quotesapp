import 'package:flutter/material.dart';

class Reward extends StatelessWidget {
  const Reward({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        height: 300,
        color: Colors.pink,
        
        child: const Text('Reward World'),
      ),
    );
  }
}
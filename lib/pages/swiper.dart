import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/pages/bottommenu.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';


class SwiperTest extends StatelessWidget {
  SwiperTest({Key? key}) : super(key: key);
  final imageList = ['https://images.unsplash.com/photo-1558236617-7d65d9dbcd02?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1457&q=80'];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Swiper(
        itemBuilder: (BuildContext context,int index){
          return Image.network(
            imageList[0],fit: BoxFit.cover,
            );
        },
         itemCount: 3,
         pagination: const SwiperPagination(),
         control: const SwiperControl(),
         scrollDirection: Axis.vertical,
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
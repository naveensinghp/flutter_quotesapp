import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/constant.dart';
import 'package:flutter_quotegenerator/pages/profile/myprofile.dart';
import 'package:flutter_quotegenerator/pages/qutoes/qutoes.dart';
import 'package:flutter_quotegenerator/pages/reward/reward.dart';
import 'package:flutter_quotegenerator/pages/swiper.dart';
import 'package:flutter_quotegenerator/pages/todo/todo.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:ionicons/ionicons.dart';


class BottomMenu extends StatefulWidget {
  const BottomMenu({ Key? key }) : super(key: key);

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
 int _selectedIndex = 0;
 final _buildBody = const <Widget>[Reward(),Reward(),Qutoes(),ToDo(),MyProfile()];
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30,
      fontFamily: gilroy, 
      fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home Page',
      style: optionStyle,
    ),
    Text(
      'Qutoes',
      style: optionStyle,
    ),
    Text(
      'Todo',
      style: optionStyle,
    ),
    Text(
      'Rewards',
      style: optionStyle,
    ),
  ];

  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
         const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.flash_on_outlined),
            label: 'Qutoes',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: const BoxDecoration(
                color: Colors.redAccent,
                shape: BoxShape.circle,
              ),
              height: 56,
              width: 56,
              child: const Icon(
                    Ionicons.reader_outline,
                    color: Colors.white,
                  ),
            ),
            label: '',
          ),
         const BottomNavigationBarItem(
            icon: Icon(Icons.rocket_launch_outlined),
            label: 'Rewards',
          ),
           const BottomNavigationBarItem(
            icon: Icon(Ionicons.bulb_outline,
            ),
            label: 'Settings',
          ),
        
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        //onTap: _onItemTapped,
        onTap: (x){
          setState(() {
            _selectedIndex = x;
          });
        },
        selectedLabelStyle: const TextStyle(fontFamily: gilroy),
      ),
      body: _buildBody[_selectedIndex],
    );
  }

}
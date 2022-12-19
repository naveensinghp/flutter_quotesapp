import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/constant.dart';
import 'package:flutter_quotegenerator/pages/profile/myprofile.dart';
import 'package:ionicons/ionicons.dart';


class BottomMenu extends StatefulWidget {
  const BottomMenu({ Key? key }) : super(key: key);

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
 int _selectedIndex = 0;
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
    
    // Text(
    //   'Settings',
    //   style: optionStyle,
    // ),
  ];

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(_selectedIndex == 4){
         Navigator.push(context,MaterialPageRoute(builder: (context) => const MyProfile()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
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
            icon: InkWell(
              onTap: () {
                
              },
              child: Container(
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
        onTap: _onItemTapped,
        selectedLabelStyle: const TextStyle(fontFamily: gilroy),
      ),
    );
  }

  Widget homeScreen(){
    return Text('Hello');
  }
}
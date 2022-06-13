import 'package:fitness_01/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Bottom app menu",
    home: BottomMenu(),
  ));
}

class BottomMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomMenuState();
  }
}

class _BottomMenuState extends State<BottomMenu> {
  var _pagesdata = [
    Homepages(),
    gympages(),
    Eventspages(),
    Yogapage(),
    Profilepage(),
  ];
  int _selectitem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          title: Text(
            "Logo here",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 1,
          actions: [
            Icon(
              Icons.notification_add_sharp,
              color: Colors.black,
            ),
            SizedBox(
              width: 40,
            )
          ],
        ),
        body: Material(
          color: Colors.cyan,
          child: Center(
            child: _pagesdata[_selectitem],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // backgroundColor: Colors.blueGrey,
          // currentIndex: selectedIndex,
          // onTap: onItemTap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.g_mobiledata_outlined), label: "Gym"),
            BottomNavigationBarItem(
                icon: Icon(Icons.event_note_outlined), label: "Events"),
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_gymnastics_sharp), label: "Yoga"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "Profile")
          ],
          currentIndex: _selectitem,
          onTap: (setValue) {
            setState(() {
              _selectitem = setValue;
            });
          },
        ));
  }
}

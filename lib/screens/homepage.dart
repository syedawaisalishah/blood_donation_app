import 'dart:async';

import 'package:blood_donation_app/screens/becomedonors.dart';
import 'package:blood_donation_app/screens/donorlogin.dart';
import 'package:blood_donation_app/screens/donors.dart';
import 'package:blood_donation_app/screens/navagationpage.dart';
import 'package:blood_donation_app/screens/profile.dart';
import 'package:flutter/material.dart';

import 'bloodrequest.dart';
import 'mainhomepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = [
    BloodRequest(),
    MainHomePage(),
    ProfilePage(),
    Donorpage(),
  ];
  int selectitem = 0;
  void _selecteditem(int index) {
    setState(() {
      selectitem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff972D2F),
        title: Text(
          'Blood Donation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Awais"),
              accountEmail: Text("awais@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.bloodtype),
              title: Text("Blood Group"),
              subtitle: Text('A+'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Become a Donor"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BecomeDonors()),
                );
              },
            ),
            ListTile(
              title: Container(
                  width: 30,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Navgationpage()),
                );
              },
            ),
          ],
        ),
      ),
      body: screens[selectitem],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: selectitem,
          onTap: _selecteditem,
          selectedLabelStyle: TextStyle(
            color: Color(0xff972D2F),
          ),
          selectedItemColor: Color(0xff972D2F),
          selectedFontSize: 15,
          items: [
            selectitem == 0
                ? BottomNavigationBarItem(
                    label: 'Add',
                    icon: Column(
                      children: [
                        Icon(
                          Icons.add,
                          color: Color(0xff972D2F),
                          size: 35,
                        ),
                      ],
                    ))
                : BottomNavigationBarItem(
                    icon: Icon(
                      Icons.add,
                      color: Color(0xff972D2F),
                      size: 30,
                    ),
                    label: ''),
            selectitem == 1
                ? BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(
                      Icons.home_filled,
                      color: Color(0xff972D2F),
                      size: 35,
                    ))
                : BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                      color: Color(0xff972D2F),
                      size: 30,
                    ),
                    label: ''),
            selectitem == 2
                ? const BottomNavigationBarItem(
                    label: "Profile",
                    icon: Icon(
                      Icons.person,
                      color: Color(0xff972D2F),
                      size: 35,
                    ),
                  )
                : const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: Color(0xff972D2F),
                      size: 30,
                    ),
                    label: ''),
            selectitem == 3
                ? const BottomNavigationBarItem(
                    label: "Donors",
                    icon: Icon(
                      Icons.person,
                      color: Color(0xff972D2F),
                      size: 35,
                    ),
                  )
                : const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_add,
                      color: Color(0xff972D2F),
                      size: 30,
                    ),
                    label: ''),
          ]),
    );
  }
}

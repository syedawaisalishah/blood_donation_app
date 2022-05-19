import 'dart:async';

import 'package:blood_donation_app/screens/admin/adminlogin.dart';
import 'package:blood_donation_app/screens/admin/adminreport.dart';
import 'package:blood_donation_app/screens/admin/becomedonors.dart';
import 'package:blood_donation_app/screens/admin/donor%20request.dart';
import 'package:blood_donation_app/screens/admin/profile.dart';
import 'package:blood_donation_app/screens/admin/donors.dart';
import 'package:blood_donation_app/screens/admin/whodonate.dart';
import 'package:blood_donation_app/screens/navagationpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'bloodrequest.dart';
import 'mainhomepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name='';
  String phone='';

  void getdata() async {
    User? user = await FirebaseAuth.instance.currentUser;
    var var1 = FirebaseFirestore.instance.collection("Users").doc().get();
    
  }

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
              accountName: Text("Admin"),
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
              title: Text("Donor Request"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DonorRequest()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Who Donate"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WhoDonate()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Report"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Report()),
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


import 'package:blood_donation_app/screens/donorsignup.dart';
import 'package:flutter/material.dart';

import 'admin/adminlogin.dart';

class Navgationpage extends StatefulWidget {
  const Navgationpage({Key? key}) : super(key: key);

  @override
  State<Navgationpage> createState() => _NavgationpageState();
}

class _NavgationpageState extends State<Navgationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                    'Admin Panel',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdminLogin()),
              );
            },
          ),
          SizedBox(
            height: 20,
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
                    'Become A Donor',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

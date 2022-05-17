import 'dart:async';

import 'package:blood_donation_app/screens/patientdetail.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff5B0101),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Container(
                    height: 150,
                    width: 240,
                    child: Image.asset('images/blood.png'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  'Request',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Patient Name',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text('Ali'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Needed by',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text('18-5-2022'),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Location',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text('Hayatabad Medical Complex'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Blood Type',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text('A+'),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.call),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PatientDetail()),
                                  );
                                },
                                child: Text("Detail"),
                              )
                            ],
                          ),
                          Container(
                            width: 400,
                            height: 100,
                            child: Image(image: AssetImage('images/map.png')),
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Patient Name',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text('Ali'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Needed by',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text('18-5-2022'),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Location',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text('Hayatabad Medical Complex'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Blood Type',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text('A+'),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.call),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PatientDetail()),
                                  );
                                },
                                child: Text("Detail"),
                              )
                            ],
                          ),
                          Container(
                            width: 400,
                            height: 100,
                            child: Image(image: AssetImage('images/map.png')),
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Patient Name',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text('Ali'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Needed by',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text('18-5-2022'),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Location',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text('Hayatabad Medical Complex'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Blood Type',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text('A+'),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.call),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PatientDetail()),
                                  );
                                },
                                child: Text("Detail"),
                              )
                            ],
                          ),
                          Container(
                            width: 400,
                            height: 100,
                            child: Image(image: AssetImage('images/map.png')),
                          )
                        ],
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}

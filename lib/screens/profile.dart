import 'package:blood_donation_app/screens/patientdetail.dart';
import 'package:blood_donation_app/screens/profiledit.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 50,
                color: Color(0xff972D2F),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ProfileEdit()),
                            );
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                          )),
                    ],
                  ),
                )),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            Center(
              child: Text(
                'Hammad',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Center(
              child: Text(
                'hammad@gmail.com',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Center(
              child: Text(
                'A+',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                ' Your Request',
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
      ),
    );
  }
}

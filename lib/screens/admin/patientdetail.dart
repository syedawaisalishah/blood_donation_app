import 'package:flutter/material.dart';

class PatientDetail extends StatefulWidget {
  PatientDetail({Key? key}) : super(key: key);

  @override
  State<PatientDetail> createState() => _PatientDetailState();
}

class _PatientDetailState extends State<PatientDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff972D2F),
          title: Text(
            'PatientDetail',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Patient Name',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text('Ali'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
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
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Patient Name',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text('Ali'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Blood Type',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text('A+'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Notes',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text('Urgent'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text(
                          'Contact',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                  // ListTile(
                  //   title: Container(
                  //       width: 30,
                  //       height: 50,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(8),
                  //         color: Colors.red,
                  //       ),
                  //       child: Center(
                  //         child: Text(
                  //           'Become A Donor',
                  //           style: TextStyle(color: Colors.white),
                  //         ),
                  //       )),
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => SignupPage()),
                  //     );
                  //   },
                  // ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.share))
            ],
          ),
        ));
  }
}

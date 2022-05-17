import 'package:flutter/material.dart';

class DonorRequest extends StatefulWidget {
  DonorRequest({Key? key}) : super(key: key);

  @override
  State<DonorRequest> createState() => _DonorRequestState();
}

class _DonorRequestState extends State<DonorRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff972D2F),
        title: Text(
          'Donor Request',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.person),
              trailing: Container(
                width: 50,
                height: 50,
                child: Center(
                  child: Text(
                    'Verified',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              title: Text("Hammad"),
              subtitle: Text('A+'),
            );
          }),
    );
  }
}

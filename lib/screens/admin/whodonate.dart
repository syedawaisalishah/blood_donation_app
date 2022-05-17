import 'package:flutter/material.dart';

class WhoDonate extends StatefulWidget {
  const WhoDonate({Key? key}) : super(key: key);

  @override
  State<WhoDonate> createState() => _WhoDonateState();
}

class _WhoDonateState extends State<WhoDonate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: Text(
          'Who Donate',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff972D2F),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.person),
              trailing: Text("Ali"),
              title: Text("Hammad"),
              subtitle: Text('A+'),
            );
          }),
    );
  }
}

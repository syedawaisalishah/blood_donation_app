import 'package:flutter/material.dart';

class Donorpage extends StatefulWidget {
  const Donorpage({Key? key}) : super(key: key);

  @override
  State<Donorpage> createState() => _DonorpageState();
}

class _DonorpageState extends State<Donorpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(
                Icons.call,
                color: Colors.red,
              ),
              title: Text("Hammad"),
              subtitle: Text('A+'),
            );
          }),
    );
  }
}

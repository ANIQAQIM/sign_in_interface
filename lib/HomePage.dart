import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Home Page'),
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Container(
            height: 80,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'WELCOME',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 80,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Log Out',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ]))));
  }
}

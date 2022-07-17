import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          color: Colors.grey.shade100,
          child: Column(
            children: [
              Row(
                children: [
                  //icon food, text: 1625 Main Street, text: My city, CA 99981 (smaler text)
                  Icon(Icons.fastfood, color: Colors.blue),
                  Column(
                    children: [
                      Text('1625 Main Street', style: TextStyle(fontSize: 12)),
                      Text('My city, CA 99981', style: TextStyle(fontSize: 10)),
                    ],
                  ), //
                ],
              )
              //icon tele, text:(408) 5555-1212
              ,
              Row(
                children: [
                  Icon(Icons.phone, color: Colors.blue),
                  Text('(408) 5555-1212', style: TextStyle(fontSize: 12)),
                ],
              )
              //icon email, text: costa@example.com
              ,
              Row(
                children: [
                  Icon(Icons.email, color: Colors.blue),
                  Text('costa@exmapple.com', style: TextStyle(fontSize: 12)),
                ],
              )
            ],
          )),
    );
  }
}

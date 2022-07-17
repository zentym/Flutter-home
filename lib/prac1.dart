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
        child: Row(
          children: [
            Column(
              children: [
                // Telephone: blue,text: call
                Icon(Icons.phone, color: Colors.blue),
                Text('Call'),
              ],
            ),
            Column(
              children: [
                //route: blue,text: route
                Icon(Icons.directions_car, color: Colors.blue),
                Text('Route'),
              ],
            ),
            Column(
              children: [
                //message: blue,text: message
                Icon(Icons.message, color: Colors.blue),
                Text('Message'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

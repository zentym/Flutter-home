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
          width: 200,
          height: 170,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            border: Border.all(
              color: Colors.grey,
              width: 5,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  //icon food, text: 1625 Main Street, text: My city, CA 99981 (smaler text)
                  Icon(Icons.fastfood, color: Colors.blue),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      Text('1625 Main Street', style: TextStyle(fontSize: 12)),
                      Text('My city, CA 99981', style: TextStyle(fontSize: 10)),
                    ],
                  ), //
                ],
              ),
              //icon tele, text:(408) 5555-121 (smaler text),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 5,
                width: 200,
                color: Color.fromARGB(255, 187, 185, 185),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.phone, color: Colors.blue),
                  const SizedBox(width: 20),
                  Text('(408) 5555-1212', style: TextStyle(fontSize: 12)),
                ],
              )
              //icon email, text: costa@example.com
              ,
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.email, color: Colors.blue),
                  const SizedBox(width: 20),
                  Text('costa@exmapple.com', style: TextStyle(fontSize: 12)),
                ],
              )
            ],
          )),
    );
  }
}

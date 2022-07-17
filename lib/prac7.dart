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
        width: 530,
        height: 300,
        color: Colors.white,
        child: Column(
          //DeSign project(size: 25)........... twodots(color: Colors.grey)
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text('Design project',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                const SizedBox(
                  width: 200,
                ),
                Text('..', style: TextStyle(fontSize: 60, color: Colors.grey)),
              ],
            ),
            //icon: opendoor, text 18% grey
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Icon(Icons.door_back_door, color: Colors.grey),
                Text('18%', style: TextStyle(color: Colors.grey)),
              ],
            ),
            //grey text: Assigned to ........ Tasks.....Hours
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text('Assigned to',
                    style: TextStyle(color: Colors.grey, fontSize: 20)),
                const SizedBox(
                  width: 100,
                ),
                Text('Tasks',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  width: 100,
                ),
                Text('Hours',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            //picture: picture..... text: 24(sized:50) dot in top right.... text:190(sized:50)
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: Icon(Icons.abc),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image: AssetImage('assets/images/profile.png'),
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                ),
                const SizedBox(
                  width: 150,
                ),
                Text('24',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                Container(
                  width: 50,
                  height: 50,
                  child: Icon(Icons.abc),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text('190',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

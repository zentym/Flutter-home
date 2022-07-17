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
          width: 430,
          height: 500,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
              //Tasks(size: 25)...........view All(color: Colors.blue)
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Text('Tasks',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    const SizedBox(
                      width: 200,
                    ),
                    Text('View All',
                        style: TextStyle(fontSize: 20, color: Colors.blue)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //icon: undone text: finishing Hi-FI...........icon: menu
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.done, color: Colors.grey),
                    const SizedBox(
                      width: 20,
                    ),
                    Text('Hi-Fi',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    const SizedBox(
                      width: 200,
                    ),
                    Icon(Icons.menu, color: Colors.grey),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 330,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //icon: undone text: meeting joe...........icon: menu
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.done, color: Colors.grey),
                    const SizedBox(
                      width: 20,
                    ),
                    Text('Meeting Joe',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    const SizedBox(
                      width: 130,
                    ),
                    Icon(Icons.menu, color: Colors.grey),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 330,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //icon: done text: Finishing wireframes(Style: Gạch giữa)...........icon: menu
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.done, color: Colors.green),
                    const SizedBox(
                      width: 20,
                    ),
                    Text('Finishing wireframes',
                        style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey)),
                    const SizedBox(
                      width: 60,
                    ),
                    Icon(Icons.menu, color: Colors.grey),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 330,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //icon: done text: Sending invoice(Style: Gạch giữa)...........icon: menu
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.done, color: Colors.green),
                    const SizedBox(
                      width: 20,
                    ),
                    Text('Sending invoice',
                        style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey)),
                    const SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.menu, color: Colors.grey),
                  ],
                ),
              ])),
    );
  }
}

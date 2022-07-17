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
        width: 500,
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 200,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  //text in the midle of container: intermediate
                  child: Center(
                    child: Text(
                      'Intermediate',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            //text: today's, text: challenge in container: middle right of picture

            Container(
              width: 200,
              height: 100,
              child: Column(
                children: [
                  Text('Today\'s', style: TextStyle(fontSize: 30)),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Challenge', style: TextStyle(fontSize: 30)),
                ],
              ),
            ),

            // text: german meals
            Container(
              width: 200,
              height: 20,
              child: Center(
                child: Text(
                  'German Meals',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
            )
            // icon: diamond, text: take this lesson to earn new milestones
            ,
            SizedBox(
              height: 50,
            ),
            Row(children: [
              const SizedBox(
                width: 30,
              ),
              Container(
                child: Center(
                  child: Row(
                    children: [
                      Icon(Icons.diamond, color: Colors.red),
                      Column(
                        children: [
                          Text('Take this lesson to',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
                          Text('   Earn new milestones',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ])
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 5,
          ),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}

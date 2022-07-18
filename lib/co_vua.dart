import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: CoVua(),
  ));
}

class CoVua extends StatelessWidget {
  const CoVua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //chữ chess ở giữa
      appBar: AppBar(
        title: Text('CoVua'),
      ),
      //tạo bàn cờ vua 64 ô trắng đen xen kẽ
      body: Container(
        color: Colors.grey,
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 500,
          child: GridView.count(
            crossAxisCount: 8,
            children: List.generate(
              64,
              (index) {
                if ((index + (index / 8).floor()) % 2 == 0) {
                  return Container(
                    color: Colors.black,
                  );
                } else {
                  return Container(
                    color: Colors.white,
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

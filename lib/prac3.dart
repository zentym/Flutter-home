import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FlashCard(),
  ));
}

class FlashCard extends StatelessWidget {
  const FlashCard({Key? key}) : super(key: key);

  Widget renderItem(index) {
    var index = 1;
    if (index == 1) {
      return const FlashCardItem2();
    } else {
      return Container(color: Colors.black);
    }
  }

  @override
  Widget build(BuildContext context) {
    int up = 1;
    return Scaffold(
      //6 flashcard 2 hình chó. 2 hình mèo, 2 hình gà và nút reset
      body: Container(
        child: GridView.builder(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: renderItem(up),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
        ),
      ),
    );
  }
}

//lật úp ảnh từ flashitme2 sang flashitem

class FlashCardItem extends StatelessWidget {
  final String title;
  final String image;

  const FlashCardItem({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('$title');
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class FlashCardItem2 extends StatelessWidget {
  const FlashCardItem2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}

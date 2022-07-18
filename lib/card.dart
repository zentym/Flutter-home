import 'package:flutter/material.dart';

class CardSwipe extends StatefulWidget {
  const CardSwipe({Key? key}) : super(key: key);

  @override
  State<CardSwipe> createState() => _CardSwipeState();
}

class _CardSwipeState extends State<CardSwipe> {
  var locked = false;
  var choiced = '';
  //mảng chứa các card
  var opened = [false, false, false, false, false, false];

  var am = {
    'cat': ['cat1', 'cat2'],
    'dog': ['dog1', 'dog2'],
    'chicken': ['chicken1', 'chicken2']
  };
  var cardPic = ['cat1', 'cat2', 'dog1', 'dog2', 'chicken1', 'chicken2'];

  Widget renderItem(index) {
    if (opened[index]) {
      return FlashCardItem(
          title: "$index", image: "images/${cardPic[index]}.jpg");
    } else {
      return const FlashCardItem2();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //6 flashcard 2 hình chó. 2 hình mèo, 2 hình gà và nút reset
      //khóa sau khi chọn sai
      appBar: AppBar(
        title: Text('CardSwipe'),
      ),

      body: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              width: 500,
              height: 600,
              child: GridView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        //mở card

                        if (locked == true) {
                          return;
                        } else {
                          opened[index] = true;
                          if (choiced == '') {
                            choiced = cardPic[index];
                          } else {
                            if (choiced[1] != cardPic[index][1]) {
                              locked = true;
                              Future.delayed(const Duration(microseconds: 500),
                                  () {
                                locked = false;
                              });
                              print("locked");
                              choiced = '';

                              opened = [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                              ];
                            } else {
                              choiced = '';
                            }
                          }
                        }
                      });
                    },
                    child: renderItem(index),
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
            RaisedButton(
              child: Text('Reset'),
              onPressed: () {
                setState(() {
                  opened = [false, false, false, false, false, false];
                  choiced = '';
                  locked = false;
                  cardPic.shuffle();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FlashCardItem extends StatelessWidget {
  final String title;
  final String image;

  const FlashCardItem({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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

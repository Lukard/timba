import 'package:flutter/material.dart';

class GameGrid extends StatelessWidget {
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    Size windowSize = MediaQuery.of(context).size;
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          childAspectRatio: windowSize.width / windowSize.height,
          children: List.generate(
            9,
            (index) => Container(
              height: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: Theme.of(context).dividerColor,
                ),
              ),
              child: Center(
                child: Text(
                  cardNumber(index),
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

String cardNumber(int position) {
  switch (position) {
    case 0:
      return "0";
    case 1:
      return "1";
    case 2:
      return "2";
    case 3:
      return "3";
    case 4:
      return "5";
    case 5:
      return "8";
    case 6:
      return "13";
    case 7:
      return "?";
    case 8:
      return "☕️";
  }
}

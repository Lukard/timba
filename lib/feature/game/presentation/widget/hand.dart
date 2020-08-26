import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hand extends StatelessWidget {
  final Function provideCard;

  Hand({this.provideCard});

  @override
  Widget build(BuildContext context) {
    Size windowSize = MediaQuery.of(context).size;
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      childAspectRatio: windowSize.width * 1.33 / windowSize.height,
      children: List.generate(
        12,
        (index) => Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: Theme.of(context).dividerColor,
            ),
          ),
          child: Center(
            child: Text(
              provideCard(index),
              key: Key(provideCard(index)),
              style: GoogleFonts.libreBaskerville(
                textStyle: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

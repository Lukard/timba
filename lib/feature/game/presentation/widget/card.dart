import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card extends StatelessWidget {
  final String symbol;

  const Card({Key key, @required this.symbol}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 600),
      opacity: 1.0,
      child: Container(
        child: Center(
          child: Text(
            symbol,
            key: Key(symbol),
            style: GoogleFonts.libreBaskerville(
              textStyle: Theme.of(context).textTheme.headline3,
            ),
          ),
        ),
      ),
    );
  }
}

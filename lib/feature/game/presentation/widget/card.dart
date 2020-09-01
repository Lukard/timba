import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card extends StatelessWidget {
  final String symbol;

  const Card({Key key, @required this.symbol}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: Theme.of(context).dividerColor,
        ),
      ),
      child: Center(
        child: Text(
          symbol,
          key: Key(symbol),
          style: GoogleFonts.libreBaskerville(
            textStyle: Theme.of(context).textTheme.headline3,
          ),
        ),
      ),
    );
  }
}

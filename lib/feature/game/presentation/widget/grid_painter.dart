import 'package:flutter/material.dart';

class GridPainter extends CustomPainter {
  final int rows;
  final int columns;
  final Color color;
  final double progress;

  GridPainter({
    @required this.rows,
    @required this.columns,
    this.color = Colors.black,
    this.progress = 1.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1;

    for (int i = 1; i < columns; i++) {
      final columnProgress = (progress - 0.2 * (i - 1)).clamp(0, 0.5) / 0.5;

      Offset startingPoint = Offset(i * (size.width / columns), 0);
      Offset endingPoint =
          Offset(i * (size.width / columns), size.height * columnProgress);

      canvas.drawLine(startingPoint, endingPoint, paint);
    }

    for (int i = 1; i < rows; i++) {
      final rowProgress = (progress - 0.1 - 0.2 * (i - 1)).clamp(0, 0.5) / 0.5;

      Offset startingPoint = Offset(0, i * (size.height / rows));
      Offset endingPoint =
          Offset(size.width * rowProgress, i * (size.height / rows));

      canvas.drawLine(startingPoint, endingPoint, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

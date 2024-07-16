import 'package:flutter/material.dart';

class ColorPage extends StatelessWidget {
  final Color color;
  final List<Offset> positions;

  ColorPage({required this.color, required this.positions});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: positions.map((pos) {
        return Positioned(
          left: pos.dx,
          top: pos.dy,
          child: Container(
            width: 50,
            height: 50,
            color: color,
          ),
        );
      }).toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SeatIcon extends StatelessWidget {
  const SeatIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        Icons.chair,
        color: Colors.red,
        size: 30,
      ),
    );
  }
}

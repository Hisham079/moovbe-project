import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Details extends StatelessWidget {
  Details(
      {super.key,
      required this.image,
      required this.txt1,
      required this.txt2,
      required this.clr});
  String txt1;
  String txt2;
  String image;
  Color clr;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: clr,
      ),
      height: 180,
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: Text(
              txt1,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              txt2,
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Image.asset(image)
        ],
      ),
    );
  }
}

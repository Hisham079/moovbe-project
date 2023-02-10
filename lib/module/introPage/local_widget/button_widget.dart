import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe/module/signin/view/signin.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {super.key,
      required this.txt,
      required this.btnclr,
      required this.txtclr,
      required this.height,
      required this.onTap,
      required this.width});
  String txt;
  Color txtclr;
  Color btnclr;
  double height;
  double width;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          style: ButtonStyle(
              // textStyle:
              //     MaterialStateProperty.all(TextStyle(color:txtclr)),
              backgroundColor: MaterialStatePropertyAll(btnclr)),
          onPressed: onTap,
          child: Text(
            txt,
            style: TextStyle(color: txtclr, fontWeight: FontWeight.w500),
          )),
    );
  }
}

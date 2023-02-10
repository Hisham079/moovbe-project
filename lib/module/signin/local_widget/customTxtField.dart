import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTxtField extends StatelessWidget {
  CustomTxtField({super.key, required this.txt});
  String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 8, top: 8),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 218, 217, 217),
            //labelText: 'Enter Username',
            // label: Center(child: Text('Enter Username')),
            hintText: txt,
            hintStyle: TextStyle(fontWeight: FontWeight.w500),
            labelStyle:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.white),
            )
            // border:
            //     OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
      ),
    );
  }
}

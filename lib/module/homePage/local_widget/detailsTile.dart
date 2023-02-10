import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe/module/busDetails/view/busDetail2X2.dart';
import 'package:moovbe/module/busDetails/view/busDetails1x3.dart';
import 'package:moovbe/module/splashPage/local_widget/button_widget.dart';

class DetailsTile extends StatelessWidget {
  DetailsTile(
      {super.key,
      required this.btnTxt,
      required this.subTitle,
      required this.title,
      required this.widget});

  String title;
  String subTitle;
  String btnTxt;
  Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
      height: 60,
      // width: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromARGB(255, 248, 242, 242),
          boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)]),
      child: Row(
        children: [
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                color: Color.fromARGB(255, 188, 188, 188),
              ),
              child: widget),
          SizedBox(
            width: 7,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 13,
              ),
              SizedBox(
                  width: 130,
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 12),
                  )),
              Text(
                subTitle,
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          SizedBox(
            width: 20,
          ),
          ButtonWidget(
            txt: btnTxt,
            btnclr: Colors.red,
            txtclr: Colors.white,
            width: 100,
            height: 28,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BusDetails2X2(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe/module/busDetails/local_widget/seat_icon.dart';

class BusDetails1X3 extends StatelessWidget {
  const BusDetails1X3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'KSRTC Swift Scania P-series',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            height: 110,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9), color: Colors.black),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 20, bottom: 15),
                      child: Text(
                        'Rohit sharma',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Licence no:23456ER5',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    width: 150, child: Image.asset('Assets/images/driver.png'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40, right: 40, top: 10),
            // height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 170, top: 10),
                  child: Icon(
                    Icons.chair,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Column(
                      children: [
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        // SeatIcon(),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        // SeatIcon(),
                      ],
                    ),
                    Column(
                      children: [
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        // SeatIcon(),
                      ],
                    ),
                    Column(
                      children: [
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                        SeatIcon(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe/module/addDriver/view/addDriver.dart';
import 'package:moovbe/module/busDetails/view/busDetails1x3.dart';
import 'package:moovbe/module/driverList/view/driverList.dart';
import 'package:moovbe/module/homePage/local_widget/details.dart';
import 'package:moovbe/module/homePage/local_widget/detailsTile.dart';
import 'package:moovbe/module/splashPage/local_widget/button_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 18, 18, 18),
        automaticallyImplyLeading: false,
        title: Stack(children: [
          Container(
            height: 58,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'moov',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  'be',
                  style: TextStyle(color: Colors.yellow, fontSize: 25),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 179,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.arrow_drop_down,
                size: 36,
                color: Colors.yellow,
              ),
            ),
          )
        ]),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Details(
                clr: Color.fromARGB(255, 251, 1, 1),
                txt1: 'Bus',
                txt2: 'Manage your Bus',
                image: 'Assets/images/bus1-removebg-preview.png',
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DriverList(),
                    ),
                  );
                },
                child: Details(
                  clr: Color.fromARGB(221, 18, 18, 18),
                  txt1: 'Driver',
                  txt2: 'Manage your Driver',
                  image: 'Assets/images/driver.png',
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 15),
            child: Text(
              '21 Buses Found',
              style: TextStyle(
                  fontSize: 13,
                  color: Color.fromARGB(255, 121, 120, 120),
                  fontWeight: FontWeight.w500),
            ),
          ),
          InkWell(
            child: DetailsTile(
              title: 'KSRTC',
              subTitle: 'Swift Scania P-series',
              btnTxt: 'Manage',
              widget: Image.asset('Assets/images/bus1-removebg-preview.png'),
            ),
          ),
          DetailsTile(
            title: 'KSRTC',
            subTitle: 'Swift Scania P-series',
            btnTxt: 'Manage',
            widget: Image.asset('Assets/images/bus1-removebg-preview.png'),
          ),
          DetailsTile(
            title: 'KSRTC',
            subTitle: 'Swift Scania P-series',
            btnTxt: 'Manage',
            widget: Image.asset('Assets/images/bus1-removebg-preview.png'),
          ),
          DetailsTile(
            title: 'KSRTC',
            subTitle: 'Swift Scania P-series',
            btnTxt: 'Manage',
            widget: Image.asset('Assets/images/bus1-removebg-preview.png'),
          ),
        ],
      ),
    );
  }
}

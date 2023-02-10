import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe/module/addDriver/view/addDriver.dart';
import 'package:moovbe/module/busDetails/view/busDetails.dart';
import 'package:moovbe/module/driverList/view/driverList.dart';
import 'package:moovbe/module/homePage/local_widget/details.dart';
import 'package:moovbe/module/homePage/local_widget/detailsTile.dart';
import 'package:moovbe/module/introPage/local_widget/button_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 18, 18, 18),
        automaticallyImplyLeading: false,
        title: Row(
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
            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: Text(
              '21 Buses Found',
              style: TextStyle(
                  color: Color.fromARGB(255, 121, 120, 120),
                  fontWeight: FontWeight.w500),
            ),
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

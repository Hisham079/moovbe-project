import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe/module/addDriver/view/addDriver.dart';
import 'package:moovbe/module/homePage/local_widget/detailsTile.dart';
import 'package:moovbe/module/introPage/local_widget/button_widget.dart';

class DriverList extends StatelessWidget {
  DriverList({
    super.key,
  });
  // String? img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Driver List',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 530,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '21 Drivers Found',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                DetailsTile(
                    title: 'Rohit Sharma',
                    subTitle: 'License no:',
                    btnTxt: 'Delete',
                    widget: CircleAvatar(
                      backgroundImage: AssetImage('Assets/images/driver2.jpg'),
                    )),
              ],
            ),
          ),
          ButtonWidget(
              txt: 'Add Driver',
              btnclr: Colors.red,
              txtclr: Colors.white,
              height: 35,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddDriver(),
                  ),
                );
              },
              width: 300)
        ],
      ),
    );
  }
}

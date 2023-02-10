import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe/module/addDriver/view/addDriver.dart';
import 'package:moovbe/module/homePage/local_widget/detailsTile.dart';
import 'package:moovbe/module/splashPage/local_widget/button_widget.dart';

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
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text(
            'Driver List',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
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
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '21 Drivers Found',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
                DetailsTile(
                    title: 'Rohit Sharma',
                    subTitle: 'License no:234',
                    btnTxt: 'Delete',
                    widget: CircleAvatar(
                      backgroundImage: AssetImage('Assets/images/driver2.jpg'),
                    )),
                DetailsTile(
                    title: 'Rohit Sharma',
                    subTitle: 'License no:3754785',
                    btnTxt: 'Delete',
                    widget: CircleAvatar(
                      backgroundImage: AssetImage('Assets/images/driver2.jpg'),
                    )),
                DetailsTile(
                  
                    title: 'Rohit Sharma',
                    subTitle: 'License no:24354657',
                    btnTxt: 'Delete',
                    widget: CircleAvatar(
                      backgroundImage: AssetImage('Assets/images/driver2.jpg'),

                    )),
                DetailsTile(
                    title: 'Rohit Sharma',
                    subTitle: 'License no:3546876',
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

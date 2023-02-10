import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe/module/homePage/view/homePage.dart';
import 'package:moovbe/module/introPage/local_widget/button_widget.dart';
import 'package:moovbe/module/signin/local_widget/customTxtField.dart';

class AddDriver extends StatelessWidget {
  const AddDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Add Driver',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTxtField(txt: 'Enter Name'),
          CustomTxtField(txt: 'Enter License Number'),
          SizedBox(
            height: 360,
          ),
          ButtonWidget(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            width: 300,
            height: 40,
            txt: 'Save',
            btnclr: Color.fromARGB(255, 242, 19, 3),
            txtclr: Colors.white,
          )
        ],
      ),
    );
  }
}

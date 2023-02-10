import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe/module/homePage/view/homePage.dart';
import 'package:moovbe/module/introPage/local_widget/button_widget.dart';
import 'package:moovbe/module/signin/local_widget/customTxtField.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Color.fromARGB(255, 245, 20, 4),
            height: 250,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 160,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 5),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Manage your Bus and Drivers',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTxtField(txt: 'Enter Username'),
          CustomTxtField(txt: 'Enter Password'),
          SizedBox(
            height: 220,
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
            txt: 'Login',
            btnclr: Color.fromARGB(255, 242, 19, 3),
            txtclr: Colors.white,
          )
        ]),
      ),
    );
  }
}
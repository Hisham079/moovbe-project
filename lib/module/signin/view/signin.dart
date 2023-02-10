import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe/module/homePage/view/homePage.dart';
import 'package:moovbe/module/splashPage/local_widget/button_widget.dart';
import 'package:moovbe/module/signin/local_widget/customTxtField.dart';

import '../local_widget/login_design.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 257,
            child: CustomPaint(
              painter: LoginDesign(),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 130),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const FittedBox(
                          child: Text(
                        'Welcome',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 43,
                            fontWeight: FontWeight.w500),
                      )),
                      const FittedBox(
                          child: Text(
                        'Manage your Bus and Drivers',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        
          const SizedBox(
            height: 20,
          ),
          CustomTxtField(txt: 'Enter Username'),
          CustomTxtField(txt: 'Enter Password'),
          const SizedBox(
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
            btnclr: const Color.fromARGB(255, 242, 19, 3),
            txtclr: Colors.white,
          )
        ]),
      ),
    );
  }
}

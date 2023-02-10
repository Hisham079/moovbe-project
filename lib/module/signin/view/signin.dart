import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            height: 257.h,
            child: CustomPaint(
              painter: LoginDesign(),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 130),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                          child: Text(
                        'Welcome',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 43.sp,
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
          SizedBox(
            height: 20,
          ),
          CustomTxtField(txt: 'Enter Username'),
          CustomTxtField(txt: 'Enter Password'),
          SizedBox(
            height: 220.h,
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
            width: 300.w,
            height: 40.h,
            txt: 'Login',
            btnclr: const Color.fromARGB(255, 242, 19, 3),
            txtclr: Colors.white,
          )
        ]),
      ),
    );
  }
}

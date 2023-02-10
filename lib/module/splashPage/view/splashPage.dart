import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe/module/splashPage/local_widget/button_widget.dart';
import 'package:moovbe/module/signin/view/signin.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 242, 23, 7),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 260,
            ),
            Stack(children: [
              Container(
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'moov',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'be',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 35,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 202,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.arrow_drop_down,
                    size: 46,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 300,
            ),
            ButtonWidget(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SigninPage(),
                    ),
                  );
                },
                width: 250,
                height: 40,
                txt: 'Get started',
                btnclr: Colors.white,
                txtclr: Colors.red),
          ],
        ),
      ),
    );
  }
}

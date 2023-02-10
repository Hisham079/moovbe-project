import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe/module/introPage/local_widget/button_widget.dart';
import 'package:moovbe/module/signin/view/signin.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

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
              height: 300,
            ),
            Row(
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

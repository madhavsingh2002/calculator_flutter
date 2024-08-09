import 'package:calculator/Components/mybutton.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEF0),
      body: Container(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/img2.png')),
            Text(
              'Daily Calculator',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15,),
            Center(
                child:
                    Text('A Great application for your daily calculating needs',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 107, 107, 107),
                        ), textAlign: TextAlign.center,)),
            SizedBox(height: 40,),
            MyButton(text: 'Get Started')
          ],
        ),
      ),
    );
  }
}

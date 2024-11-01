import 'package:flutter/material.dart';
import 'package:proj1/InformationContainer.dart';
import 'package:proj1/constans.dart';

void main() {
  runApp(BusinessCardApp());
}

// ignore: must_be_immutable
class BusinessCardApp extends StatelessWidget {
  BusinessCardApp({super.key});
  double radius = 112;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: maincolor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 112,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('assets/image.png'),
              ),
            ),
            Text(
              'Ammar Mansor',
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Pacifico',
                color: Colors.white,
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Pacifico',
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            InformationContainer(
              text: '(079) 678 20 00',
              icon: Icons.phone,
            ),
            SizedBox(height:20),
            InformationContainer(
              text: 'ammarmansor@gmail.com',
              icon: Icons.mail,
            )
          ],
        ),
      ),
    );
  }
}

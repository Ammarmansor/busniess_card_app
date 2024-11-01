import 'package:flutter/material.dart';
import 'package:proj1/constans.dart';

class InformationContainer extends StatelessWidget {
  const InformationContainer({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 20),
          Icon(
            icon,
            color: maincolor,
          ),
          const SizedBox(width: 40),
           Text(
            text,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

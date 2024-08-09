import 'package:flutter/material.dart';

class MyKey extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final VoidCallback? onTap;
  const MyKey({super.key, required this.title, required this.backgroundColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: 
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 228, 227, 227).withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

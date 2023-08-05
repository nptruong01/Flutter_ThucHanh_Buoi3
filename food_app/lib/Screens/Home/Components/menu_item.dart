import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const MenuItem({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 80, // Increase the height of the container
          alignment: Alignment.center,
          child: Text(
            title.toUpperCase(),
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
          ),
        ),
      ),
    );
  }
}

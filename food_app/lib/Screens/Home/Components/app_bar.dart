import 'package:flutter/material.dart';
import 'package:food_app/Components/default_button.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            height: 10,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(width: 2),
          Text(
            "Foodi".toUpperCase(),
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          ),
          // const Spacer(),
          const SizedBox(width: 2),
          Expanded(
            child: Center(
              child: SizedBox(
                height: 60, // Increase the height of the menu items container
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // Number of menu items
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: MenuItem(
                        title: _getMenuItemTitle(index),
                        press: () {},
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Transform.scale(
            scale: 0.5, // Adjust the scaling factor as needed
            child: DefaultButton(
              text: "Get Started",
              press: () {},
            ),
          ),
        ],
      ),
    );
  }

  String _getMenuItemTitle(int index) {
    // Return the appropriate menu item title based on the index
    switch (index) {
      case 0:
        return "Home";
      case 1:
        return "About";
      case 2:
        return "Pricing";
      case 3:
        return "Contact";
      case 4:
        return "Login";
      default:
        return "";
    }
  }
}

// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:toku_app/components/catogory_items.dart';
import 'package:toku_app/screens/color_page.dart';
import 'package:toku_app/screens/familymember_page.dart';
import 'package:toku_app/screens/number_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff4d9),
      appBar: AppBar(
        backgroundColor: Color(0xff49332a),
        title: Text(
          "Toku",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ),
              );
            },
            text: "Number",
            color: Color(0xfff99531),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyMemberPage();
                  },
                ),
              );
            },
            text: "Family Members",
            color: Color(0xff528032),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorPage();
                  },
                ),
              );
            },
            text: "Colors",
            color: Color(0xff7d40a2),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhrasesPage();
                  },
                ),
              );
            },
            text: "Phrases",
            color: Color(0xff47a5cb),
          ),
        ],
      ),
    );
  }
}

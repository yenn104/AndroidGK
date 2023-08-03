import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'package:flutter/material.dart';

Color randomColor() {
  final random = Random();
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

class ComponentsCard extends StatelessWidget {
  final String title;
  final Widget components;
  const ComponentsCard(
      {super.key, required this.title, required this.components});




  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (context) => components));
      },
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width / 2,
        padding: const EdgeInsets.all(17),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(12, 34, 225, 1.0),
            borderRadius: BorderRadius.circular(19)),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily:
                    GoogleFonts.dmSans(fontWeight: FontWeight.w500).fontFamily),
          ),
        ),
      ),
    );
  }
}

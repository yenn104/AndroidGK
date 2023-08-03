import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alert3 extends StatefulWidget {
  final String message;
  final String description;

  const Alert3(this.message, this.description, {super.key});

  @override
  State<Alert3> createState() => _Alert3State();
}

class _Alert3State extends State<Alert3> {
  late bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 68,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(26, 132, 73, 1),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            const Icon(
              Icons.verified,
              color: Colors.white,
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.message,
                    style: TextStyle(
                        fontFamily:
                            GoogleFonts.publicSans(fontWeight: FontWeight.w600)
                                .fontFamily,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text(widget.description,
                      style: TextStyle(
                          fontFamily: GoogleFonts.publicSans(
                                  fontWeight: FontWeight.w400)
                              .fontFamily,
                          fontSize: 18,
                          color: Colors.white)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _visible = !_visible;
                });
              },
              child: const Icon(
                Icons.cancel_sharp,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

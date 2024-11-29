import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcom_Text extends StatelessWidget {
  const Welcom_Text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Rasool,What are you\nlooking for 👀",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700)),
          Container(
            child: Image.asset(
              width: 40,
              'assets/cart.png',
            ),
          )
        ],
      ),
    );
  }
}

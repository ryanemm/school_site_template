import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_site_template/components/simple_button.dart';
import 'package:school_site_template/utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  // final navLinks = ["Home", "Products", "Features", "Contacts"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: LinearGradient(colors: [
                        Color(0xFFC86DD7),
                        Color(0xFF3023AE),
                      ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
                  child: Center(
                    child: Text(
                      "R",
                      style:
                          GoogleFonts.ubuntu(fontSize: 30, color: Colors.white),
                    ),
                  )),
              SizedBox(width: 16),
              Text(
                "Britu",
                style: GoogleFonts.ubuntu(
                  fontSize: 26,
                ),
              )
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Home", style: GoogleFonts.ubuntu(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Text("Products", style: GoogleFonts.ubuntu(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Text("Features", style: GoogleFonts.ubuntu(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Text("Contact", style: GoogleFonts.ubuntu(fontSize: 18)),
                ),
                SizedBox(width: 24),
                SimpleButton(
                  text: "Login",
                  shadowColor: Colors.grey.shade500,
                  ftSize: 20,
                  buttonColor2: Color(0xFFC86DD7),
                  buttonColor1: Color(0xFF3023AE),
                )
              ],
            )
          else
            Icon(Icons.menu)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_site_template/components/simple_button.dart';
import 'package:school_site_template/utils/responsiveLayout.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
      mediumScreen: MediumChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/header.jpg"),
      )),
      child: Stack(children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 150, horizontal: 100),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.5,
              color: Colors.grey.shade900.withOpacity(0.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "History",
                    style: GoogleFonts.ubuntu(
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra ex a felis ultrices, suscipit consectetur tellus volutpat. Vivamus convallis sodales elit, sit amet lacinia turpis venenatis nec. Nullam vel convallis orci. ",
                    style: GoogleFonts.ubuntu(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  SizedBox(height: 16),
                  SimpleButton(
                    text: "Learn More",
                    shadowColor: Colors.transparent,
                  )
                ],
              )),
        ),
      ]),
    );
  }
}

class MediumChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

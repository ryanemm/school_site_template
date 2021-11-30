import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_site_template/components/simple_button.dart';

class EventsSection extends StatelessWidget {
  const EventsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/school_hall.jpg"),
      )),
      child: Stack(children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
              padding:
                  EdgeInsets.only(top: 150, bottom: 150, left: 100, right: 250),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.88,
              width: MediaQuery.of(context).size.width * 0.6,
              color: Colors.black.withOpacity(0.6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "EVENTS",
                    style: GoogleFonts.ubuntu(
                        fontSize: 64,
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
                    text: "See all upcoming events",
                    shadowColor: Colors.transparent,
                  )
                ],
              )),
        ),
      ]),
    );
  }
}

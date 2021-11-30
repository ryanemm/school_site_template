import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MissionSection extends StatelessWidget {
  const MissionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 100, horizontal: 250),
      child: Column(
        children: [
          Text(
            "OUR MISSION",
            style:
                GoogleFonts.ubuntu(fontSize: 64, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 16),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra ex a felis ultrices, suscipit consectetur tellus volutpat. Vivamus convallis sodales elit, sit amet lacinia turpis venenatis nec. Nullam vel convallis orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra ex a felis ultrices, suscipit consectetur tellus volutpat. Vivamus convallis sodales elit, sit amet lacinia turpis venenatis nec. Nullam vel convallis orci. ",
            style: GoogleFonts.ubuntu(
              fontSize: 18,
              height: 1.5,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

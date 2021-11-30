import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_site_template/components/simple_button.dart';
import 'package:school_site_template/utils/responsiveLayout.dart';

class AdmissionsSection extends StatelessWidget {
  const AdmissionsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      smallScreen: _SmallChild(),
      mediumScreen: _MediumChild(),
      largeScreen: _LargeChild(),
    );
  }
}

class _LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 150),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ADMISSIONS",
                  style: GoogleFonts.ubuntu(
                      fontSize: 64,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(height: 24),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Text(
                    "We pride ourselves on ensuring that we produce Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra ex a felis ultrices, suscipit consectetur tellus volutpat. Vivamus convallis sodales elit, sit amet lacinia turpis venenatis nec. Nullam vel convallis orci",
                    style: GoogleFonts.ubuntu(
                        fontSize: 18,
                        height: 1.5,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Text(
                    "We pride ourselves on ensuring that we produce Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra ex a felis ultrices, suscipit consectetur tellus volutpat. Vivamus convallis sodales elit, sit amet lacinia turpis venenatis nec. Nullam vel convallis orci",
                    style: GoogleFonts.ubuntu(
                        fontSize: 18,
                        height: 1.5,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Container(
            child: SimpleButton(
              text: "Apply",
              shadowColor: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}

class _MediumChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

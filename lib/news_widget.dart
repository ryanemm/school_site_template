import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_site_template/components/simple_button.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    Key? key,
    required this.date,
    required this.summary,
    required this.title,
  }) : super(key: key);
  final String date;
  final String summary;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: [
          Text(
            title,
            style:
                GoogleFonts.ubuntu(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Text(
            date,
            style:
                GoogleFonts.ubuntu(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          Container(
            height: 350,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/news_thumbnail_large.png",
                    )),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          Text(
            summary,
            style: GoogleFonts.ubuntu(
              fontSize: 18,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          SimpleButton(
            text: "Read full article",
            shadowColor: Colors.grey.shade500,
          )
        ],
      ),
    );
  }
}

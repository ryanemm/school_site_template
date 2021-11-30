import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_site_template/news_widget.dart';

class NewsSection extends StatefulWidget {
  @override
  _NewsSectionState createState() => _NewsSectionState();
}

class _NewsSectionState extends State<NewsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 100),
      child: Column(
        children: [
          Text(
            "NEWS",
            style:
                GoogleFonts.ubuntu(fontSize: 64, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 24),
          NewsWidget(
              date: "29 October 2021",
              summary:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra ex a felis ultrices, suscipit consectetur tellus volutpat. Vivamus convallis")
        ],
      ),
    );
  }
}

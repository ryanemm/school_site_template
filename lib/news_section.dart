import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_site_template/news_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NewsSection extends StatefulWidget {
  @override
  _NewsSectionState createState() => _NewsSectionState();
}

class _NewsSectionState extends State<NewsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 100),
      child: Stack(children: [
        Column(
          children: [
            Text(
              "NEWS",
              style:
                  GoogleFonts.ubuntu(fontSize: 64, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 24),
            CarouselSlider(
              items: [
                NewsWidget(
                    title: "COVID-19 Update ",
                    date: "29 October 2021",
                    summary:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra ex a felis ultrices, suscipit consectetur tellus volutpat. Vivamus convallis"),
                NewsWidget(
                    title: "COVID-19 Update ",
                    date: "29 October 2021",
                    summary:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra ex a felis ultrices, suscipit consectetur tellus volutpat. Vivamus convallis"),
                NewsWidget(
                    title: "COVID-19 Update ",
                    date: "29 October 2021",
                    summary:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra ex a felis ultrices, suscipit consectetur tellus volutpat. Vivamus convallis"),
                NewsWidget(
                    title: "COVID-19 Update ",
                    date: "29 October 2021",
                    summary:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra ex a felis ultrices, suscipit consectetur tellus volutpat. Vivamus convallis"),
              ],
              options: CarouselOptions(
                // height: 500,
                viewportFraction: 0.5,
                // aspectRatio: 1.0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 1500),
              ),
              carouselController: CarouselController(),
            )
          ],
        ),
        Positioned(
            left: 0,
            child: Container(
              width: 200,
              height: 1000,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.white.withOpacity(0.01)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight)),
            )),
        Positioned(
            right: 0,
            child: Container(
              width: 200,
              height: 1000,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.white.withOpacity(0.01)],
                      end: Alignment.centerLeft,
                      begin: Alignment.centerRight)),
            )),
      ]),
    );
  }
}

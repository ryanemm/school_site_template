import 'package:flutter/material.dart';
import 'package:school_site_template/WIdgets/navbar.dart';
import 'package:school_site_template/admissions_section.dart';
import 'package:school_site_template/contact_section.dart';
import 'package:school_site_template/events_section.dart';
import 'package:school_site_template/hero_section.dart';
import 'package:school_site_template/mission_section.dart';
import 'package:school_site_template/news_section.dart';
import 'utils/responsiveLayout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFFF8FBFF),
        Color(0xFFFCFDFD),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              HeroSection(),
              MissionSection(),
              AdmissionsSection(),
              NewsSection(),
              EventsSection(),
              ContactSection()
            ],
          ),
        ),
      ),
    );
  }
}

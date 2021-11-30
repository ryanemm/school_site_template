import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_site_template/components/simple_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 100),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CONTACT",
                  style: GoogleFonts.ubuntu(
                      fontSize: 64,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[900]),
                ),
                SizedBox(height: 40),
                Text(
                  "If you would like to get in touch with us or you have any queries feel free to leave us a message",
                  style: GoogleFonts.ubuntu(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[900]),
                ),
                SizedBox(height: 20),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "NAME",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "CONTACT NUMBER",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "EMAIL",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                          hintText: "MESSAGE",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    SizedBox(height: 20),
                    SimpleButton(
                      text: "Send",
                      shadowColor: Colors.grey.shade500,
                    )
                  ],
                ))
              ],
            ),
          ),
          SizedBox(width: 50),
          Container(width: 4, height: 600, color: Colors.blue[900]),
          SizedBox(width: 50),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "30 De Havilland Crescent",
                  style: GoogleFonts.ubuntu(fontSize: 18),
                ),
                Text(
                  "Sequenor Park",
                  style: GoogleFonts.ubuntu(fontSize: 18),
                ),
                Text(
                  "Pretoria, 0020",
                  style: GoogleFonts.ubuntu(fontSize: 18),
                ),
                Text(
                  "South Africa",
                  style: GoogleFonts.ubuntu(fontSize: 18),
                ),
                Text(
                  "General Enquiries:",
                  style: GoogleFonts.ubuntu(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  "+27 (0) 34 254 4895",
                  style: GoogleFonts.ubuntu(fontSize: 18),
                ),
                Text(
                  "Email Address:",
                  style: GoogleFonts.ubuntu(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

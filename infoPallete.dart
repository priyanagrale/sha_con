import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sha_con/utils/fonts.dart';

class InfoPallete extends StatelessWidget {
  final String title;
  final String text;
  final IconData icon;

  InfoPallete({required this.title, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(12.0)),
          child: Icon(
            icon,
            size: 22.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          style: GoogleFonts.nunito(
              fontWeight: FontWeight.w800, fontSize: fontTitle),
        ),
        SizedBox(
          height: 15.0,
        ),
        Container(
          width: 200.0,
          child: Text(
            text,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w400,
                color: Colors.black54,
                fontSize: fontTextMain),
          ),
        ),

        SizedBox(height: 15.0,),

        Container(
          height: 1.5,
          width: 90.0,
          color: Colors.black87,
        )
      ],
    );
  }
}

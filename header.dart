import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sha_con/utils/colors.dart';
import 'package:sha_con/utils/fonts.dart';

class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(200, 22, 44, 33),
      // color: bgColor,
      // color: Color(0xff373e98),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50.0,
              ),
              Icon(
                Icons.home_work,
                color: fontTitleColor,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Sharma Constructions',
                style: GoogleFonts.nunito(
                    color: fontTitleColor, fontSize: fontTitle),
              ),
              // SizedBox(
              //   width: 250,
              // ),

            ],
          ),
          // golden color gradient
          // Container(
          //   width: 100,
          //   height: 125,
          //   decoration: BoxDecoration(
          //     border: Border.all(
          //       color: Colors.red,
          //       width: 5.0,
          //     ),
          //     gradient: LinearGradient(
          //       colors: [Colors.yellow, Color(0xffad9c00)],
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //     ),
          //   ),
          // ),


          Flexible(fit: FlexFit.tight, child: SizedBox()),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HeaderNav('Home', true),
              SizedBox(width: 40,),
              HeaderNav('About', false),
              SizedBox(width: 40,),
              HeaderNav('Services', false),
              SizedBox(width: 40,),
              HeaderNav('Contact Us', false),
              SizedBox(width: 50,),
            ],
          ),
        ],
      ),
    );
  }
}

class HeaderNav extends StatefulWidget {
  final String text;
  final bool selected;

  HeaderNav(this.text, this.selected);

  @override
  State<HeaderNav> createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: GoogleFonts.nunito(
              fontSize: fontTextMain, color: fontTitleColor),
        ),

        widget.selected?SizedBox(
          height: 5.0,
        )
            :SizedBox(),

        widget.selected? CircleAvatar(
          backgroundColor: fontTitleColor, radius: 2.0,
        )
            :SizedBox(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sha_con/view/webHomeScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return WebHomeScreen();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return Container(color: Colors.red);
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Container(color: Colors.yellow);
        }

        return Container(color: Colors.purple);
      },
    ));
  }

//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('assets/images/our_bgg.png'),
//           // Replace 'background_image.jpg' with your image file path
//           fit: BoxFit.cover,
//
//           // color: Color.fromARGB(100, 22, 44, 33),
//         ),
//       ),
//       height: MediaQuery.of(context).size.height,
//       width: double.infinity,
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Row(
//                   children: [
//                     Container(
//                       color: Colors.lightGreenAccent,
//                     ),
//                   ],
//                 ),
//                 Container(
//                   color: Colors.transparent,
//                   child: Column(
//                     children: [
//                       Container(
//                         child: Stack(
//                           children: [
//                             // HomeImageCarousal(),
//                             // Container(
//                             //   height: MediaQuery.of(context).size.height,
//                             //   width: MediaQuery.of(context).size.width,
//                             //   color: Color.fromARGB(100, 22, 44, 33),
//                             //   child: Column(
//                             //     children: [
//                             //       Container(
//                             //         child: Stack(children: [
//                             //           Row(
//                             //             children: [
//                             //               Container(
//                             //                 height: MediaQuery.of(context)
//                             //                     .size
//                             //                     .height,
//                             //                 width: MediaQuery.of(context)
//                             //                     .size
//                             //                     .width,
//                             //                 color: Colors.transparent,
//                             //                 child: Stack(
//                             //                   children: [
//                             //                     Transform(
//                             //                       transform: Matrix4
//                             //                           .rotationZ(pi / 6)
//                             //                         ..translate(-50.0, -60.0),
//                             //                       child: Container(
//                             //                         height: 350.0,
//                             //                         width: 700.0,
//                             //                         decoration: BoxDecoration(
//                             //                             color: Color.fromARGB(
//                             //                                 170, 22, 44, 33),
//                             //                             borderRadius:
//                             //                                 BorderRadius
//                             //                                     .circular(
//                             //                                         300.0)),
//                             //                       ),
//                             //                     ),
//                             //                     Transform(
//                             //                       transform:
//                             //                           Matrix4.rotationZ(
//                             //                               pi / 9)
//                             //                             ..translate(
//                             //                                 -150.0, 160.0),
//                             //                       child: Container(
//                             //                         height: 350.0,
//                             //                         width:
//                             //                             MediaQuery.of(context)
//                             //                                 .size
//                             //                                 .width,
//                             //                         decoration: BoxDecoration(
//                             //                             color: Color.fromARGB(
//                             //                                 170, 22, 44, 33),
//                             //                             borderRadius:
//                             //                                 BorderRadius
//                             //                                     .circular(
//                             //                                         300.0)),
//                             //                       ),
//                             //                     ),
//                             //                     Positioned(
//                             //                         top: 200.0,
//                             //                         left: 100.0,
//                             //                         child: Container(
//                             //                           height: 500.0,
//                             //                           width: MediaQuery.of(
//                             //                                   context)
//                             //                               .size
//                             //                               .width,
//                             //                           child: Column(
//                             //                             crossAxisAlignment:
//                             //                                 CrossAxisAlignment
//                             //                                     .start,
//                             //                             children: [
//                             //                               Text(
//                             //                                 title,
//                             //                                 style: GoogleFonts.montserrat(
//                             //                                     fontSize:
//                             //                                         38.0,
//                             //                                     fontWeight:
//                             //                                         FontWeight
//                             //                                             .w800,
//                             //                                     color: Colors
//                             //                                         .white),
//                             //                               ),
//                             //                               Text(
//                             //                                 subtitle,
//                             //                                 style: GoogleFonts.montserrat(
//                             //                                     fontSize:
//                             //                                         25.0,
//                             //                                     fontWeight:
//                             //                                         FontWeight
//                             //                                             .w400,
//                             //                                     color: Colors
//                             //                                         .white),
//                             //                               ),
//                             //                               SizedBox(
//                             //                                 height: 20,
//                             //                               ),
//                             //                               Container(
//                             //                                   width: 300.0,
//                             //                                   child: Text(
//                             //                                     'Sharma Constructions is a division of  engineering, construction, manufacturing and financial services conglomerate, with global operations. Sharma Constructions addresses critical needs in key sectors',
//                             //                                     style: GoogleFonts.montserrat(
//                             //                                         fontSize:
//                             //                                             fontTextMain,
//                             //                                         fontWeight:
//                             //                                             FontWeight
//                             //                                                 .w400,
//                             //                                         color: Colors
//                             //                                             .white),
//                             //                                   )),
//                             //                               SizedBox(
//                             //                                 height: 30,
//                             //                               ),
//                             //                               Row(
//                             //                                 children: [
//                             //                                   Container(
//                             //                                     height: 45.0,
//                             //                                     width: 230.0,
//                             //                                     child:
//                             //                                         OutlinedButton(
//                             //                                       child: Text(
//                             //                                           btnGallery),
//                             //                                       style: OutlinedButton.styleFrom(
//                             //                                           side: BorderSide(width: 1.0, color: Colors.white),
//                             //                                           primary: Colors.white,
//                             //                                           textStyle: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
//                             //                                           shape: RoundedRectangleBorder(
//                             //                                             borderRadius:
//                             //                                                 BorderRadius.all(Radius.circular(30)),
//                             //                                           )),
//                             //                                       onPressed: () => Navigator.of(
//                             //                                               context)
//                             //                                           .push(MaterialPageRoute(
//                             //                                               builder: (context) =>
//                             //                                                   const CardAbout())),
//                             //                                     ),
//                             //                                   )
//                             //                                 ],
//                             //                               ),
//                             //                             ],
//                             //                           ),
//                             //                         ))
//                             //                   ],
//                             //                 ),
//                             //               ),
//                             //             ],
//                             //           ),
//                             //         ]),
//                             //       ),
//                             //     ],
//                             //   ),
//                             // ),
//                             Header(),
//                             // Container(
//                             //   margin: EdgeInsets.only(top: 550.0),
//                             //   child: CardAbout(),
//                             // ),
//                           ],
//                         ),
//                       ),
//                       // Container(
//                       //   child: HomeImageCarousal(),
//                       //   foregroundDecoration: BoxDecoration(
//                       //     color: Color.fromARGB(147, 39, 43, 72),
//                       //   ),
//                       // ),
//                       SizedBox(
//                         height: 50,
//                       ),
//
//                       Container(
//                         height: MediaQuery.of(context).size.height,
//                         width: double.infinity,
//                         color: Colors.white,
//                         margin: EdgeInsets.all(20.0),
//                         child: Stack(
//                           children: [
//                             Positioned(
//                               right: -200,
//                               child: Container(
//                                 height: 300.0,
//                                 width: 400.0,
//                                 decoration: BoxDecoration(
//                                     color: Colors.grey.shade100,
//                                     borderRadius:
//                                         BorderRadius.circular(300.0)),
//                               ),
//                             ),
//                             Column(
//                               children: [
//                                 SizedBox(
//                                   height: 50,
//                                 ),
//                                 Text(
//                                   'How we Work ?',
//                                   style: GoogleFonts.nunito(
//                                     fontSize: 20.0,
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 40.0,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     InfoPallete(
//                                         title:
//                                             'Project concept and initiation ',
//                                         text:
//                                             'A client calls our consultants to see what’s possible and hire consultants to advise on the design and planning of their project.                     ',
//                                         icon: Icons.ac_unit_sharp),
//                                     InfoPallete(
//                                         title: 'Design and planning ',
//                                         text:
//                                             'The consultants begin designing and planning the structure, this may even include a 3D Visualisation of the design.',
//                                         // text : 'The consultants begin designing and planning the structure, selecting materials and estimating costs. This may even include a 3D Visualisation of the design. These consultants award the project to the best contractors for the job, following a tender process.',
//                                         icon: Icons.ac_unit_sharp),
//                                     InfoPallete(
//                                         title:
//                                             'Geo technical and earthworks ',
//                                         text:
//                                             'This is when soil mechanics and rock mechanics investigate the conditions of the grounds, to make sure it is safe and suitable',
//                                         // text : 'This is when soil mechanics and rock mechanics investigate the conditions of the grounds where the structure will be placed to make sure it is safe and suitable. Find out more about becoming an Geo technician.',
//                                         icon: Icons.ac_unit_sharp),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 60.0,
//                                 ),
//                                 TextButton(
//                                   style: TextButton.styleFrom(
//                                       backgroundColor: Colors.white,
//                                       primary: Colors.black87,
//                                       padding: EdgeInsets.all(0.0)),
//                                   onPressed: () {},
//                                   child: Container(
//                                     padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(30.0),
//                                       border: Border.all(color: Colors.grey.shade800),
//                                     ),
//                                     child: Text('Explore More', style: GoogleFonts.nunito(fontSize: fontTextSub, fontWeight: FontWeight.w800),),
//                                   ),
//
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       // CardAbout(),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       // CardServices(),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
}

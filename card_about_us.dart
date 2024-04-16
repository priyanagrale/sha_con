import 'package:flutter/material.dart';
import 'package:sha_con/utils/fonts.dart';
import 'package:sha_con/utils/strings.dart';

class CardAbout extends StatefulWidget {
  const CardAbout({Key? key}) : super(key: key);

  @override
  State<CardAbout> createState() => _CardAboutState();
}

class _CardAboutState extends State<CardAbout> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Container(
        height: 850,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              // imagee(),
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),

                    Text(
                      navAboutUsStr,
                      style: TextStyle(
                          fontSize: fontTitleAbout1,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade600),
                    ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text(
                    //       title,
                    //       style: TextStyle(
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //
                    //   ],
                    // ),
                    SizedBox(
                      height: 5,
                    ),

                    Text(
                      title,
                      style: TextStyle(
                        fontSize: fontTitleAbout,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 5,
                    ),

                    Text(
                      '$title is a leading construction company based in Jalandhar. We specialize in Custom Homes, Modern House designs, Vastu Design, Commercial Buildings, Interior Designing. With over 5 years of experience, we have built a reputation for excellence, reliability, and innovation.',
                      style: TextStyle(fontSize: fontTextSub),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Our Mission',
                      style: TextStyle(
                        fontSize: fontTitle,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'At $title, our mission is to Our mission is to build lasting relationships with our clients by delivering exceptional construction services that exceed expectations. We are committed to safety, quality, and innovation in every project we undertake, contributing to the growth and development of communities we serve. We are committed to delivering exceptional construction solutions while prioritizing client satisfaction and community development.',
                      style: TextStyle(fontSize: fontTextSub),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'What Sets Us Apart',
                      style: TextStyle(
                        fontSize: fontTitle,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '- Expertise: Our team consists of highly skilled professionals with expertise in [Specific Areas of Expertise].',
                      style: TextStyle(fontSize: fontTextSub),
                    ),
                    Text(
                      '- Quality: We prioritize quality and adhere to industry standards and best practices in every project we undertake.',
                      style: TextStyle(fontSize: fontTextSub),
                    ),
                    Text(
                      '- Client-Centric Approach: [Company Name] values clear communication, transparency, and responsiveness, ensuring a positive experience for our clients.',
                      style: TextStyle(fontSize: fontTextSub),
                    ),
                    Text(
                      '- Innovation: We leverage the latest technologies and innovative approaches to optimize efficiency and enhance project outcomes.',
                      style: TextStyle(fontSize: fontTextSub),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Our Services',
                      style: TextStyle(
                        fontSize: fontTitle,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '- [List of Services]',
                      style: TextStyle(fontSize: fontTextSub),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Get in Touch',
                      style: TextStyle(
                        fontSize: fontTitle,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Ready to start your next construction project? Contact us today to discuss how [Company Name] can bring your vision to life.',
                      style: TextStyle(fontSize: fontTextSub),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '[Contact Information]',
                      style: TextStyle(fontSize: fontTextSub),
                    ),
                    // style: TextStyle(
                    //     fontSize: fontTextMain,
                    //     fontWeight: FontWeight.w400,
                    //     color: Colors.grey.shade600),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

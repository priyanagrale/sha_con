import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeImageCarousal extends StatelessWidget {
  List imageList = [
    {"id": 0, "image_path": 'assets/images/bg.png'},
    {"id": 1, "image_path": 'assets/images/2.png'},
    {"id": 2, "image_path": 'assets/images/bgg.png'},
    {"id": 3, "image_path": 'assets/images/interier.png'},
    {"id": 4, "image_path": 'assets/images/bggg.png'},
    // {"id": 3, "image_path": 'assets/images/bgg.png'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  HomeImageCarousal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.redAccent.withOpacity(0.5),
      child: Column(children: [
        Stack(
          children: [
            InkWell(
              onTap: () {
                print(currentIndex);
              },
              child: CarouselSlider(
                items: imageList
                    .map(
                      (item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
                        // color: Color.fromARGB(100, 22, 44, 33),
                      ),
                    )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    // setState(() {
                    //   currentIndex = index;
                    // });
                  },
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

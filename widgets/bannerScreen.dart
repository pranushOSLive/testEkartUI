// ignore_for_file: file_names

import 'package:ekart_sample_pranush/widgets/buyCard.dart';
import 'package:flutter/material.dart';
import 'package:ekart_sample_pranush/resorces/HomePageFeatures.dart';

class HomeBanner extends StatelessWidget {
  BuildContext context;
  int pageIndex = 0;
  PageController pageController = PageController();
  Color color = Colors.white;
  HomeBanner({Key? key, required this.context, required this.color})
      : super(key: key);

  @override
  Widget build(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      decoration: BoxDecoration(
          color: color,
          image: const DecorationImage(
              image: AssetImage("images/apple2.jpg"), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
              left: 25,
              bottom: 300 / 2,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 36,
                  color: Colors.white,
                ),
                onPressed: () {
                  pageController.animateToPage(++pageIndex,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.linearToEaseOut);
                },
              )),
          Positioned(
              right: 25,
              bottom: 300 / 2,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 36,
                  color: Colors.white,
                ),
                onPressed: () {},
              )),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 2,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(26))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 250,
                        width: 300,
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Iphone 14 Pro Max",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Starting at 72,000/-",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "offers available upto 10% off using credit card",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            OrderCard(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                          height: 250,
                          width: 300,
                          child: Image.asset(bannerImages[0])),
                    ),
                  ],
                )),
          )),
        ],
      ),
    );
  }
}

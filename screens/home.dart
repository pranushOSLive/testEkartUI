import 'package:ekart_sample_pranush/widgets/bannerScreen.dart';
import 'package:ekart_sample_pranush/widgets/categories.dart';
import 'package:flutter/material.dart';
import 'package:ekart_sample_pranush/resorces/HomePageFeatures.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Padding(
              padding: const EdgeInsets.all(6),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ListView.builder(
                        itemCount: homePageData.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 7, right: 7),
                            child: InkWell(
                              onTap: () {},
                              child: Chip(
                                  backgroundColor: Colors.white60,
                                  label: Center(
                                      child: Text(
                                    homePageData[index].toUpperCase(),
                                    style: const TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold),
                                  ))),
                            ),
                          );
                        }),
                  ))),
        ),
        HomeBanner(
          context: context,
          color: Colors.white54,
        ),
        Categories(),
      ],
    ));
  }
}

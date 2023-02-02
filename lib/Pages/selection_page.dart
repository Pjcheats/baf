import 'package:baf/Component/custom_button.dart';
import 'package:baf/Component/selection_button.dart';
import 'package:baf/Controller/color_style_controller.dart';
import 'package:baf/Pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectionPage extends StatelessWidget {
  SelectionPage({super.key});
  final enjoyList = [
    ["recreational", "Recreate", "images/icons/recreate-icon.png"],
    ["relaxation", "Relax", "images/icons/relax-icon.png"],
    ["music", "Music", "images/icons/music-icon.png"],
    ["social", "Social", "images/icons/social-icon.png"],
  ];
  final workList = [
    ["cooking", "Cooking", "images/icons/cooking-icon.png"],
    ["charity", "Charity", "images/icons/charity-icon.png"],
    ["diy", "DIY", "images/icons/diy-icon.png"],
    ["education", "Study", "images/icons/study-icon.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text("What's on your mind ?", style: headlineStyle2),
                    Divider(color: dividerColor, height: 20, thickness: 1),
                  ],
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 15),
                  child: Text("Enjoy", style: headlineStyle3),
                ),
                Container(
                  height: 150.h,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return SelectionButton(
                        tag: enjoyList[index][0],
                        label: enjoyList[index][1],
                        imgURL: enjoyList[index][2],
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 15, top: 15),
                  child: Text("Work", style: headlineStyle3),
                ),
                Container(
                  height: 150.h,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return SelectionButton(
                        tag: workList[index][0],
                        label: workList[index][1],
                        imgURL: workList[index][2],
                      );
                    },
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyButton(label: "Get suggestion", onPressed: () {
                Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => ResultPage(),
    ),);
              }),
            )
          ],
        ),
      ),
    );
  }
}

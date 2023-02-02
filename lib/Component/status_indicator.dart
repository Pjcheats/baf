import 'package:baf/Controller/color_style_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StatusIndicator extends StatelessWidget {
  double? value;
  String? label;
  String imgURL = '';
  StatusIndicator({super.key, this.label, this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(label ?? '', style: indicatorStyle),Image.asset('images/dollar-note.png')],
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        LinearPercentIndicator(
          lineHeight: 30.h,
          percent: value ?? .5,
          progressColor: Color.fromRGBO(40, 180, 95, 1),
          backgroundColor: Color.fromRGBO(170, 235, 195, 1),
          animation: true,
          animateFromLastPercent: true,
          barRadius: Radius.circular(10.r),
        )
      ],
    );
  }
}

import 'package:baf/Controller/color_style_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  VoidCallback onPressed;
  String label;
  double? width;
  IconData? icon;
  MyButton(
      {super.key,
      required this.label,
      required this.onPressed,
      this.width,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(20.r),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: buttonGradientColor),
          borderRadius: BorderRadius.circular(20.r),
        ),
        width: width ?? double.infinity,
        height: 100.h,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(label, style: buttonStyle1),
              icon == null
                  ? SizedBox()
                  : Row(
                      children: [
                        SizedBox(
                          width: 70.w,
                        ),
                        Icon(
                          icon,
                          size: 30,
                          color: backgroundColor,
                        )
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:baf/Controller/color_style_controller.dart';
import 'package:baf/provider/tagList_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectionButton extends StatefulWidget {
  String label;
  String tag;
  String imgURL;
  SelectionButton({
    super.key,
    required this.tag,
    required this.label,
    required this.imgURL,
  });

  @override
  State<SelectionButton> createState() =>
      _SelectionButtonState(tag: tag, imgURL: imgURL, label: label);
}

class _SelectionButtonState extends State<SelectionButton> {
  String label;
  String imgURL;
  String tag;
  _SelectionButtonState(
      {required this.label, required this.tag, required this.imgURL});

  @override
  Widget build(BuildContext context) {
    var tagList = context.watch<TaglistProvider>().myTags;
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.r),
        onTap: () {
          context.read<TaglistProvider>().AddTag(tag);
        },
        child: Container(
          width: 120.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: tagList.contains(tag)
                ? buttonSelectedBackgroundColor
                : buttonBackgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  height: 100.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Image.asset(imgURL),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 5.h,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      label,
                      style: buttonStyle2,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

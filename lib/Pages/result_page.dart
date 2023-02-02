import 'package:baf/Controller/activity_api_contoller.dart';
import 'package:baf/Controller/color_style_controller.dart';
import 'package:baf/Model/activity_model.dart';
import 'package:baf/provider/tagList_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../Component/custom_button.dart';
import '../Component/status_indicator.dart';

class ResultPage extends StatefulWidget {
  ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  ActivityModel _activityModel = ActivityModel();
  List<String> tagList = [];
  //;
  _ResultPageState();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tagList = context.read<TaglistProvider>().myTags;
    _GetActivity();
  }

  _GetActivity() async {
    _activityModel.type = null;
    setState(() {});
    _activityModel = await GetActivity(tagList);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                  height: 50.h,
                  child: Center(
                    child: _activityModel.type == null
                  ? SpinKitThreeInOut(color: headlineColor,size: 36.sp,)
                  : Text(_activityModel.type ?? '', style: headlineStyle2),
                  )),
              
              Divider(color: dividerColor, height: 20.h, thickness: 1),
              Container(
                  height: 300.h,
                  child: Center(
                    child: _activityModel.type == null
                        ? SpinKitRing(color: AccentColor)
                        : Text(_activityModel.activityText ?? '',
                            style: headlineStyle3, textAlign: TextAlign.center),
                  )),
              Divider(color: dividerColor, height: 20.h, thickness: 1),
              StatusIndicator(
                label: 'Price',
                value: _activityModel.priceScore ?? 0,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: MyButton(
        label: "Nah",
        onPressed: _GetActivity,
        width: 100.h,
      ),
    );
  }
}

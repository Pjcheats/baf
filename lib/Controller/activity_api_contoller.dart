import 'dart:convert';
import "dart:math";
import 'package:baf/Model/activity_model.dart';
import 'package:http/http.dart';

Future<ActivityModel> GetActivity(List<String> tagList) async {
  
  String type = tagList.isEmpty ? '' : tagList[Random().nextInt(tagList.length)];
  Response response = await get(Uri.parse("https://www.boredapi.com/api/activity?type=$type"));
  Map data = jsonDecode(response.body);

  ActivityModel activityModel = ActivityModel(
      activityText: data["activity"],
      priceScore: double.parse(data["price"].toString()),
      type: data["type"]);
  return activityModel;
}

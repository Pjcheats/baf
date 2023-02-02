import 'package:flutter/cupertino.dart';

class TaglistProvider extends ChangeNotifier {
  List<String> taglist = [];
  List<String> get myTags => taglist ;
  
  void AddTag(String tag) {
    if (taglist.contains(tag)) {
      taglist.remove(tag);
    } else {
      taglist.add(tag);
    }
    notifyListeners();
    return;
  }
}

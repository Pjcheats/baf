import 'package:baf/provider/tagList_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'Pages/entry_page.dart';

void main() {
  runApp(ChangeNotifierProvider<TaglistProvider>(
    create: (context) => TaglistProvider(),
    child: ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) => MaterialApp(
        
        title: 'Baf - bored AF',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        debugShowCheckedModeBanner: false,
        home: EntryPage(),
      ),
    ),)
  );
}

import 'package:flutter/material.dart';

import 'card_page.dart';
import 'column_page.dart';
import 'gridview_card_page.dart';
import 'row_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewPage(),
    );
  }
}


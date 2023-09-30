import 'package:flutter/material.dart';
import 'list_view.dart';
import 'grid_view.dart';
import 'snack_bar.dart';
import 'dissmisible.dart';
import 'drawer.dart';
import 'alert_dialog.dart';
import 'bottom_sheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter widgets',
      home:  BottomSheetWidget(),
    );
  }
}


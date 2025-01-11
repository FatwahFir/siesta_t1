import 'package:flutter/material.dart';
import 'package:siesta_t1/app/core/themes/theme.dart';
import 'package:siesta_t1/app/pages/base_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home: const BaseView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page_choice_chip.dart';
import 'package:flutter_application_1/home_page_expansion_tile.dart';
import 'package:flutter_application_1/home_page_fittedbox.dart';
import 'package:flutter_application_1/home_page_sliver_app_bar.dart';
import 'package:flutter_application_1/home_page_stream_builder.dart';
import 'package:flutter_application_1/home_page_search_bar.dart';
import 'package:flutter_application_1/home_page_slider_adaptive.dart';
import 'package:flutter_application_1/home_page_stepper.dart';
import 'package:flutter_application_1/home_page_wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home:
          // const HomePageStepper(),
          // const HomePageFittedBox(),
          // const HomePageSearchBar(),
          // const HomePageSlederAdaptive(),
          // const HomePageStreamBuilder( title: '',),
          // const HomePageChoiseChip(),
          // const HomePageSliverAppBar(),
          // const HomePageWrap(),
          const HomePageExpansionTile(),
    );
  }
}

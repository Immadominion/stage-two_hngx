import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stage_two/util/color_theme.dart';
import 'package:stage_two/views/cv_views/cv_about_models.dart';
import 'package:stage_two/views/cv_views/cv_project_models.dart';
import 'package:stage_two/views/cv_views/cv_work_models.dart';
import 'package:stage_two/views/cv_views/main_cv_widgets.dart';
import 'package:stage_two/views/edit_views/main_edit.dart';

class MainCV extends StatefulWidget {
  const MainCV({super.key});

  @override
  State<MainCV> createState() => _MainCVState();
}

late String ptitle;
late String pyear;
late String pdesc;

late String wtitle;
late String wkeytype;
late String wdecription;
late String wendyear;
late String wlocation;

class _MainCVState extends State<MainCV> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: const Text(
              '________',
              style: TextStyle(
                fontSize: 20,
                color: immaPurple,
              ),
            ),
            centerTitle: true,
            backgroundColor: immaGray,
          ),
          backgroundColor: immaGray,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myRow(context),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CVAboutModel(),
                      SizedBox(
                        height: 20,
                      ),
                      CVProjectsModel(),
                      SizedBox(
                        height: 20,
                      ),
                      CVWorkExperienceModel(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 35,
          right: 20,
          child: FloatingActionButton(
            backgroundColor: immaPurple,
            heroTag: 'Edit CV',
            onPressed: () {
              Timer(const Duration(seconds: 1), () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainEditPage(),
                  ),
                );
              });
            },
            child: const Icon(
              Icons.edit_document,
              size: 14,
              color: immaWhite,
            ),
          ),
        ),
      ],
    );
  }
}

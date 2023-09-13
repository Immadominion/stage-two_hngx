import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stage_two/util/color_theme.dart';
import 'package:stage_two/views/cv_views/cv_content_models.dart';
import 'package:stage_two/views/cv_views/main_cv_widgets.dart';
import 'package:stage_two/views/edit_views/main_edit.dart';

class MainCV extends StatefulWidget {
  const MainCV({super.key});

  @override
  State<MainCV> createState() => _MainCVState();
}

class _MainCVState extends State<MainCV> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text(
              '________',
              style: TextStyle(
                fontSize: 10.sp,
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
                myRow(),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.w, 0, 10.w, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      const CVAboutModel(),
                      SizedBox(
                        height: 10.h,
                      ),
                      const CVProjectsModel(),
                      SizedBox(
                        height: 10.h,
                      ),
                      const CVWorkExperienceModel(),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 35.h,
          right: 10.h,
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
            child: Icon(
              Icons.edit_document,
              size: 15.sp,
              color: immaWhite,
            ),
          ),
        ),
      ],
    );
  }
}

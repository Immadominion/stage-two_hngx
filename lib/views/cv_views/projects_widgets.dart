import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stage_two/views/cv_views/main_cv_widgets.dart';

Widget projectColumn(String head, String body, String year) {
  return Padding(
    padding: EdgeInsets.only(left: 20.sp),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.h,
        ),
        dateText(
          year,
        ),
        SizedBox(
          height: 3.h,
        ),
        headerText(head, 10.sp),
        SizedBox(
          height: 3.h,
        ),
        bodyText(body, 8.sp),
        SizedBox(
          height: 10.h,
        ),
      ],
    ),
  );
}

Widget workExperienceColumn(
    String head, String body, String startYear, String endYear, location) {
  return Padding(
    padding: EdgeInsets.only(left: 20.sp),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.h,
        ),
        dateText(
          "From $startYear - $endYear",
        ),
        SizedBox(
          height: 3.h,
        ),
        headerText(head, 10.sp),
        SizedBox(
          height: 3.h,
        ),
        dateText(
          location,
        ),
        SizedBox(
          height: 3.h,
        ),
        bodyText(body, 8.sp),
        SizedBox(
          height: 10.h,
        ),
      ],
    ),
  );
}

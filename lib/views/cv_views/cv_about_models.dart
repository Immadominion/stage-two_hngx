import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stage_two/logic/cv_provider.dart';
import 'package:stage_two/model/cv_text.dart';
import 'package:stage_two/views/cv_views/main_cv_widgets.dart';
import 'package:stage_two/views/cv_views/projects_widgets.dart';

late String aboutSection;

class CVAboutModel extends StatelessWidget {
  const CVAboutModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: headerText('About', 10.sp),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w, top: 10.h),
          child: bodyText(aboutSection = aboutString, 8.sp),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

class CVProjectsModel extends StatelessWidget {
  const CVProjectsModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: headerText('Projects', 10.sp),
        ),
        projectColumn(
          'White Board at Cosmos Cleverage',
          whiteBoard,
          '2023',
        ),
        projectColumn(
          'Hng Stage One Task',
          hngStageOne,
          '2023',
        ),
        projectColumn(
          'TGW Finance at Starr Power Technologies Interview',
          tgwFinance,
          '2023',
        ),
        projectColumn(
          'Donations Web App at Charity Church',
          donationsWebApp,
          '2023',
        )
      ],
    );
  }
}

class CVWorkExperienceModel extends StatelessWidget {
  const CVWorkExperienceModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: headerText(
            'Work Experience',
            10.sp,
          ),
        ),
        workExperienceColumn(
          'Junior Flutter Developer at Starr Power',
          juniorTechRole,
          '2023',
          '2023',
          'Remote',
        ),
        workExperienceColumn(
          'Hng Stage One Task',
          volunteerRole,
          '2023',
          '2023',
          'Remote',
        ),
      ],
    );
  }
}

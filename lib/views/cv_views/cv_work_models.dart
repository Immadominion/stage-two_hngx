import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stage_two/logic/cv_provider.dart';
import 'package:stage_two/model/cv_text.dart';
import 'package:stage_two/views/cv_views/main_cv_widgets.dart';
import 'package:stage_two/views/cv_views/projects_widgets.dart';

class CVWorkExperienceModel extends StatefulWidget {
  const CVWorkExperienceModel({
    super.key,
  });

  @override
  State<CVWorkExperienceModel> createState() => _CVWorkExperienceModelState();
}

final workWidgets = <Widget>[
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
];

class _CVWorkExperienceModelState extends State<CVWorkExperienceModel> {
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
        ListView.builder(
          shrinkWrap: true,
          itemCount: context
              .watch<WorkExperienceState>()
              .getLatestWorkExperienceWidgets
              .length,
          itemBuilder: (context, index) {
            return context
                .watch<WorkExperienceState>()
                .getLatestWorkExperienceWidgets[index];
          },
        ),
      ],
    );
  }
}

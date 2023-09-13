import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stage_two/logic/cv_provider.dart';
import 'package:stage_two/model/cv_text.dart';
import 'package:stage_two/views/cv_views/main_cv_widgets.dart';
import 'package:stage_two/views/cv_views/projects_widgets.dart';

class CVProjectsModel extends StatefulWidget {
  const CVProjectsModel({
    super.key,
  });

  @override
  State<CVProjectsModel> createState() => _CVProjectsModelState();
}

final projectWidgets = <Widget>[
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
];

class _CVProjectsModelState extends State<CVProjectsModel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: headerText('Projects', 10.sp),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount:
              context.watch<ProjectState>().getLatestProjectWidgets.length,
          itemBuilder: (context, index) {
            return context.watch<ProjectState>().getLatestProjectWidgets[index];
          },
        ),
      ],
    );
  }
}

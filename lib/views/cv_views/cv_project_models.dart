// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:stage_two/model/cv_text.dart';
import 'package:stage_two/views/cv_views/main_cv_widgets.dart';
import 'package:stage_two/views/cv_views/projects_widgets.dart';

class CVProjectsModel extends StatefulWidget {
  const CVProjectsModel({
    Key? key,
  }) : super(key: key);

  @override
  State<CVProjectsModel> createState() => CVProjectsModelState();
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

class CVProjectsModelState extends State<CVProjectsModel> {
  @override
  void initState() {
    projectWidgets;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: headerText('Projects', 18.0),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: projectWidgets.length,
          itemBuilder: (context, index) {
            return projectWidgets[index];
          },
        ),
      ],
    );
  }
}

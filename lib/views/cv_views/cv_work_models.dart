import 'package:flutter/material.dart';
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
  void initState() {
    workWidgets;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: headerText(
            'Work Experience',
            18.0,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: workWidgets.length,
          itemBuilder: (context, index) {
            return workWidgets[index];
          },
        ),
      ],
    );
  }
}

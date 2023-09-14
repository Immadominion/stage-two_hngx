import 'package:flutter/material.dart';
import 'package:stage_two/model/cv_text.dart';
import 'package:stage_two/views/cv_views/main_cv_widgets.dart';

late String aboutSection;

class CVAboutModel extends StatelessWidget {
  const CVAboutModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: headerText('About', 18.0),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 18),
          child: bodyText(aboutSection = aboutString, 14.0),
        )
      ],
    );
  }
}

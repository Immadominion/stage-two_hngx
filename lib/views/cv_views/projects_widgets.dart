import 'package:flutter/material.dart';
import 'package:stage_two/views/cv_views/main_cv_widgets.dart';

Widget projectColumn(String head, String body, String year) {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 18,
        ),
        dateText(
          year,
        ),
        const SizedBox(
          height: 3,
        ),
        headerText(head, 18.0),
        const SizedBox(
          height: 3,
        ),
        bodyText(body, 14.0),
        const SizedBox(
          height: 18,
        ),
      ],
    ),
  );
}

Widget workExperienceColumn(
    String head, String body, String startYear, String workEndYear, location) {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 18,
        ),
        dateText(
          "From $startYear - $workEndYear",
        ),
        const SizedBox(
          height: 3,
        ),
        headerText(head, 18),
        const SizedBox(
          height: 3,
        ),
        dateText(
          location,
        ),
        const SizedBox(
          height: 3,
        ),
        bodyText(body, 14),
        const SizedBox(
          height: 18,
        ),
      ],
    ),
  );
}

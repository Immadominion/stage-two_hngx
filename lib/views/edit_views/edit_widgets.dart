import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stage_two/logic/cv_provider.dart';
import 'package:stage_two/util/color_theme.dart';
import 'package:stage_two/views/edit_views/projects_edit_page.dart';
import 'package:stage_two/views/edit_views/work_experience_edit_page.dart';

Row editMeText(String editWhat, icon) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        editWhat,
        style: TextStyle(
          fontFamily: 'Monteserrat',
          fontSize: 11.sp,
          fontWeight: FontWeight.w700,
          shadows: const <Shadow>[
            Shadow(color: immaBlack, blurRadius: 1),
          ],
        ),
      ),
      Icon(
        icon,
        color: immaWhite,
        size: 13.sp,
        shadows: const <Shadow>[
          Shadow(color: immaBlack, blurRadius: 1),
        ],
      ),
    ],
  );
}

TextFormField myTextAccess(
  String label,
  TextEditingController myAccessController,
  bool keyType,
  maxLent,
  bool title,
  bool desc,
  BuildContext context,
) {
  return TextFormField(
    onChanged: (string) {
      if (title) {
        string = titleController.text;
        context.read<ProjectState>().holdTitleText(string);
      } else if (keyType) {
        string = yearController.text;
        context.read<ProjectState>().holdYearText(string);
      } else if (desc) {
        string = descriptionController.text;
        context.read<ProjectState>().holdDescriptionText(string);
      }
    },
    onEditingComplete: () {},
    controller: myAccessController,
    maxLength: maxLent,
    keyboardType: keyType ? TextInputType.number : TextInputType.text,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.r),
      ),
    ),
  );
}

TextFormField myWorkDescriptionAccess(
  String label,
  TextEditingController myWorkAccessController,
  bool keyType,
  maxLent,
  bool title,
  bool desc,
  BuildContext context,
  bool endYearType,
  bool location,
) {
  return TextFormField(
    onChanged: (string) {
      if (title) {
        string = workTitleController.text;
        context.read<WorkExperienceState>().holdWorkTitleText(string);
      } else if (keyType) {
        string = startYearController.text;
        context.read<WorkExperienceState>().holdStartYear(string);
      } else if (desc) {
        string = workDescriptionController.text;
        context.read<WorkExperienceState>().holdWorkDescription(string);
      }
      if (endYearType) {
        string = endYearController.text;
        context.read<WorkExperienceState>().holdEndYear(string);
      }
      if (location) {
        string = locationController.text;
        context.read<WorkExperienceState>().holdLocation(string);
      }
    },
    onEditingComplete: () {},
    controller: myWorkAccessController,
    maxLength: maxLent,
    keyboardType: keyType ? TextInputType.number : TextInputType.text,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.r),
      ),
    ),
  );
}

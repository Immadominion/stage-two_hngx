import 'package:flutter/material.dart';
import 'package:stage_two/util/color_theme.dart';
import 'package:stage_two/views/cv_views/main_cv.dart';
import 'package:stage_two/views/edit_views/projects_edit_page.dart';
import 'package:stage_two/views/edit_views/work_experience_edit_page.dart';

Row editMeText(String editWhat, icon) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        editWhat,
        style: const TextStyle(
          fontFamily: 'Monteserrat',
          fontSize: 18,
          fontWeight: FontWeight.w700,
          shadows: <Shadow>[
            Shadow(color: immaBlack, blurRadius: 1),
          ],
        ),
      ),
      Icon(
        icon,
        color: immaWhite,
        size: 18,
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
  int maxLent,
  bool title,
  bool desc,
  BuildContext context,
) {
  return TextFormField(
    onChanged: (string) {
      if (title) {
        string = titleController.text;
        ptitle = string;
      } else if (keyType) {
        string = yearController.text;
        pyear = string;
      } else if (desc) {
        string = descriptionController.text;
        pdesc = string;
      }
    },
    onEditingComplete: () {},
    controller: myAccessController,
    maxLength: maxLent,
    keyboardType: keyType ? TextInputType.number : TextInputType.text,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
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
        wtitle = string;
      } else if (keyType) {
        string = startYearController.text;
        wkeytype = string;
      } else if (desc) {
        string = workDescriptionController.text;
        wdecription = string;
      }
      if (endYearType) {
        string = endYearController.text;
        wendyear = string;
      }
      if (location) {
        string = locationController.text;
        wlocation = string;
      }
    },
    onEditingComplete: () {},
    controller: myWorkAccessController,
    maxLength: maxLent,
    keyboardType: keyType ? TextInputType.number : TextInputType.text,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
      ),
    ),
  );
}

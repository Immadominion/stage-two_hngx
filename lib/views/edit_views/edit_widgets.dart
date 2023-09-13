import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stage_two/logic/cv_provider.dart';
import 'package:stage_two/util/color_theme.dart';
import 'package:stage_two/views/edit_views/projects_edit_page.dart';

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
      } else if (desc) {
        string = descriptionController.text;
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

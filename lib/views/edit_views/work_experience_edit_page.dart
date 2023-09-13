import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stage_two/logic/cv_provider.dart';
import 'package:stage_two/util/color_theme.dart';
import 'package:stage_two/views/cv_views/main_cv_widgets.dart';
import 'package:stage_two/views/edit_views/edit_widgets.dart';

class WorkExperienceEditPage extends StatefulWidget {
  const WorkExperienceEditPage({super.key});

  @override
  State<WorkExperienceEditPage> createState() => _WorkExperienceEditPageState();
}

late TextEditingController workTitleController;
late TextEditingController locationController;
late TextEditingController startYearController;
late TextEditingController endYearController;
late TextEditingController workDescriptionController;

class _WorkExperienceEditPageState extends State<WorkExperienceEditPage> {
  @override
  void initState() {
    workTitleController = TextEditingController();
    locationController = TextEditingController();
    startYearController = TextEditingController();
    endYearController = TextEditingController();
    workDescriptionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    workTitleController.dispose();
    locationController.dispose();
    startYearController.dispose();
    endYearController.dispose();
    workDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: headerText(
          'Work Experiences',
          15.sp,
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(
            top: 20.sp,
            bottom: 20.sp,
          ),
          margin: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: immaWhite,
                width: 1.w,
              ),
            ),
          ),
          child: Card(
            elevation: 5.sp,
            color: immaPurple,
            shadowColor: immaWhite.withOpacity(0.3),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: 8.sp, right: 8.sp),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      myWorkDescriptionAccess(
                        'Work Title*',
                        workTitleController,
                        false,
                        40,
                        true,
                        false,
                        context,
                        false,
                        false,
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      myWorkDescriptionAccess(
                        'Start Year*',
                        startYearController,
                        true,
                        4,
                        false,
                        false,
                        context,
                        false,
                        false,
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      myWorkDescriptionAccess(
                        'End Year*',
                        endYearController,
                        true,
                        4,
                        false,
                        false,
                        context,
                        true,
                        false,
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      myWorkDescriptionAccess(
                        'Location*',
                        locationController,
                        false,
                        40,
                        true,
                        false,
                        context,
                        false,
                        true,
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      myWorkDescriptionAccess(
                        'Description',
                        workDescriptionController,
                        false,
                        1200,
                        false,
                        true,
                        context,
                        false,
                        false,
                      ),
                      TextButton(
                        onPressed: () {
                          context
                              .read<WorkExperienceState>()
                              .saveWorkExperienceToList();
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: immaPurple,
                              content: Text(
                                  "You successfully added a WorkExperience"),
                            ),
                          );
                        },
                        child: Container(
                          height: 30.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: immaGray,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Center(
                            child: Text(
                              'Done',
                              style: TextStyle(
                                fontFamily: 'Monteserrat',
                                fontSize: 10.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

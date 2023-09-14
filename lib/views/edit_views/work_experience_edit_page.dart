import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stage_two/main.dart';
import 'package:stage_two/util/color_theme.dart';
import 'package:stage_two/views/cv_views/cv_project_models.dart';
import 'package:stage_two/views/cv_views/cv_work_models.dart';
import 'package:stage_two/views/cv_views/main_cv.dart';
import 'package:stage_two/views/cv_views/main_cv_widgets.dart';
import 'package:stage_two/views/cv_views/projects_widgets.dart';
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
          15.0,
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
          ),
          margin: const EdgeInsets.all(18),
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: immaWhite,
                width: 1,
              ),
            ),
          ),
          child: Card(
            elevation: 5,
            color: immaPurple,
            shadowColor: immaWhite.withOpacity(0.3),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
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
                      const SizedBox(
                        height: 18,
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
                      const SizedBox(
                        height: 18,
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
                      const SizedBox(
                        height: 18,
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
                      const SizedBox(
                        height: 18,
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
                          setState(() {
                            workWidgets.add(
                              workExperienceColumn(wtitle, wdecription,
                                  wkeytype, wendyear, wlocation),
                            );
                          });
                          navigatorKey.currentState
                              ?.popUntil((route) => route.isFirst);
                          Timer(
                            const Duration(milliseconds: 15000),
                            () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainCV()),
                              );
                            },
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: immaPurple,
                              content: Text(
                                  "You successfully added a WorkExperience"),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: immaGray,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              'Done',
                              style: TextStyle(
                                fontFamily: 'Monteserrat',
                                fontSize: 17,
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

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stage_two/util/color_theme.dart';
import 'package:stage_two/views/cv_views/cv_project_models.dart';
import 'package:stage_two/views/cv_views/main_cv.dart';
import 'package:stage_two/views/cv_views/main_cv_widgets.dart';
import 'package:stage_two/views/cv_views/projects_widgets.dart';
import 'package:stage_two/views/edit_views/edit_widgets.dart';

class ProjectEditPage extends StatefulWidget {
  const ProjectEditPage({super.key});

  @override
  State<ProjectEditPage> createState() => _ProjectEditPageState();
}

late TextEditingController titleController;
late TextEditingController yearController;
late TextEditingController descriptionController;

class _ProjectEditPageState extends State<ProjectEditPage> {
  @override
  void initState() {
    titleController = TextEditingController();
    yearController = TextEditingController();
    descriptionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    yearController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: headerText(
          'Projects',
          15.0,
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
          ),
          margin: const EdgeInsets.all(10),
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
                      myTextAccess(
                        'Title*',
                        titleController,
                        false,
                        40,
                        true,
                        false,
                        context,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      myTextAccess(
                        'Year*',
                        yearController,
                        true,
                        4,
                        false,
                        false,
                        context,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      myTextAccess(
                        'Description',
                        descriptionController,
                        false,
                        1200,
                        false,
                        true,
                        context,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            projectWidgets
                                .add(projectColumn(ptitle, pdesc, pyear));
                          });
                          Navigator.popUntil(context, (route) => route.isFirst);
                          Timer(
                            const Duration(milliseconds: 500),
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
                              content: Text("You successfully added a project"),
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

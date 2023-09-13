import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stage_two/util/color_theme.dart';
import 'package:stage_two/views/cv_views/main_cv_widgets.dart';
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
    //   Future.microtask(() =>
    //   context.read<TextState>().holdTitleText(titleController.text );
    // );
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
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      SizedBox(
                        height: 10.sp,
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
                      SizedBox(
                        height: 10.sp,
                      ),
                      myTextAccess(
                        'Description',
                        descriptionController,
                        false,
                        1200,
                        false,
                        true,
                        context,
                      )
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

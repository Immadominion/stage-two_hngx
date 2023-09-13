import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:stage_two/util/color_theme.dart';
import 'package:stage_two/views/edit_views/edit_widgets.dart';
import 'package:stage_two/views/edit_views/projects_edit_page.dart';

class MainEditPage extends StatefulWidget {
  const MainEditPage({super.key});

  @override
  State<MainEditPage> createState() => _MainEditPageState();
}

class _MainEditPageState extends State<MainEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: immaGray,
      appBar: AppBar(
        backgroundColor: immaGray,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontFamily: 'Monteserrat',
            fontSize: 10.sp,
            color: immaWhite,
          ),
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
                      Lottie.asset(
                        'assets/animation/verified.json',
                        width: 100.w,
                        height: 100.h,
                      ),
                      SizedBox(
                        height: 12.sp,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const ProjectEditPage()),
                            ),
                          );
                        },
                        child: editMeText(
                          'Add Projects',
                          Icons.menu,
                        ),
                      ),
                      SizedBox(
                        height: 8.sp,
                      ),
                      GestureDetector(
                        child: editMeText(
                          'Add Work Experiences',
                          Icons.work,
                        ),
                      ),
                      SizedBox(
                        height: 8.sp,
                      ),
                      GestureDetector(
                        child: editMeText(
                          'About',
                          Icons.contact_emergency_outlined,
                        ),
                      ),
                      SizedBox(
                        height: 8.sp,
                      ),
                      GestureDetector(
                        child: editMeText(
                          'Add Personal Details',
                          Icons.person,
                        ),
                      ),
                      SizedBox(
                        height: 8.sp,
                      ),
                      GestureDetector(
                        child: editMeText(
                          'Add Skills',
                          Icons.balance_outlined,
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

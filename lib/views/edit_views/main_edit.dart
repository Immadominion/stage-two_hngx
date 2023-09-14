import 'package:flutter/material.dart';
import 'package:stage_two/util/color_theme.dart';
import 'package:stage_two/views/cv_views/main_cv.dart';
import 'package:stage_two/views/edit_views/edit_widgets.dart';
import 'package:stage_two/views/edit_views/projects_edit_page.dart';
import 'package:stage_two/views/edit_views/work_experience_edit_page.dart';

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
        title: const Text(
          'Edit Profile CV',
          style: TextStyle(
            fontFamily: 'Monteserrat',
            fontSize: 20,
            color: immaWhite,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
          ),
          margin: const EdgeInsets.all(20),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 12,
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
                      const SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) =>
                                  const WorkExperienceEditPage()),
                            ),
                          );
                        },
                        child: editMeText(
                          'Add Work Experiences',
                          Icons.work,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: immaPurple,
                              content: Text("Non Functional Button"),
                            ),
                          );
                        },
                        child: editMeText(
                          'About',
                          Icons.contact_emergency_outlined,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: immaPurple,
                              content: Text("Non Functional Button"),
                            ),
                          );
                        },
                        child: editMeText(
                          'Add Personal Details',
                          Icons.person,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: immaPurple,
                              content: Text("Non Functional Button"),
                            ),
                          );
                        },
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

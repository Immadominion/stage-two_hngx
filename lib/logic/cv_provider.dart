import 'package:flutter/material.dart';
import 'package:stage_two/views/cv_views/cv_project_models.dart';
import 'package:stage_two/views/cv_views/cv_work_models.dart';
import 'package:stage_two/views/cv_views/projects_widgets.dart';

class ProjectState extends ChangeNotifier {
  late String projectTitle;
  late String projectYear;
  late String projectDescription;
  String get getProjectTitle => projectTitle;
  String get getProjectYear => projectYear;
  String get getProjectDescription => projectDescription;
  List<Widget> projectWidgetEvent = projectWidgets;
  List<Widget> get getLatestProjectWidgets => projectWidgetEvent;

  void holdTitleText(String storeTitle) {
    projectTitle = storeTitle;
    notifyListeners();
  }

  void holdYearText(String storeYear) {
    projectYear = storeYear;
    notifyListeners();
  }

  void holdDescriptionText(String storeDesc) {
    projectDescription = storeDesc;
    notifyListeners();
  }

  void saveProjectToList() {
    print('${projectWidgetEvent.length}');
    projectWidgetEvent.add(
      projectColumn(
        getProjectTitle,
        getProjectDescription,
        getProjectYear,
      ),
    );
    print('${projectWidgetEvent.length}');
    notifyListeners();
  }
}

class WorkExperienceState extends ChangeNotifier {
  late String workTitle;
  late String startYear;
  String endYear = '';
  String location = '';
  late String workDescription;
  String get getWorkTitle => workTitle;
  String get getStartYear => startYear;
  String get getEndYear => endYear;
  String get getLocation => location;
  String get getWorkDescription => workDescription;
  List<Widget> workWidgetEvent = workWidgets;
  List<Widget> get getLatestWorkExperienceWidgets => workWidgetEvent;

  void holdWorkTitleText(String storeWorkTitle) {
    workTitle = storeWorkTitle;
    notifyListeners();
  }

  void holdStartYear(String storeStartYear) {
    startYear = storeStartYear;
    notifyListeners();
  }

  void holdEndYear(String storeEndYear) {
    endYear = storeEndYear;
    notifyListeners();
  }

  void holdLocation(String storeLocation) {
    location = storeLocation;
    notifyListeners();
  }

  void holdWorkDescription(String storeWorkDescription) {
    workDescription = storeWorkDescription;
    notifyListeners();
  }

  void saveWorkExperienceToList() {
    print('${workWidgetEvent.length}');
    workWidgetEvent.add(
      workExperienceColumn(
        getWorkTitle,
        getWorkDescription,
        getStartYear,
        getEndYear,
        getLocation,
      ),
    );
    print('${workWidgetEvent.length}');
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class ProjectState extends ChangeNotifier {
  late String projectTitle;
  late String projectYear;
  late String projectDescription;
  String get getProjectTitle => projectTitle;
  String get getProjectYear => projectYear;
  String get getProjectDescription => projectDescription;

  void holdTitleText(String storeTitle) {
    projectTitle = storeTitle;
    print('$projectTitle');
    notifyListeners();
  }

  void holdYearText(String storeYear) {
    projectTitle = storeYear;
    print('$projectYear');
    notifyListeners();
  }

  void holdDescriptionText(String storeDesc) {
    projectDescription = storeDesc;
    print('$projectDescription');
    notifyListeners();
  }
}

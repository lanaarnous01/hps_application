import 'package:flutter/foundation.dart';

class HistoryActivity{
  final String activity;
  final DateTime dateTime;

  HistoryActivity({
    required this.activity,
    required this.dateTime
  });
}

class History with ChangeNotifier{
  List<HistoryActivity> _activity = [];
  List<HistoryActivity> get activity {
    return [..._activity];
  }
  void addHistory(String activityName){
    _activity.insert(0, 
    HistoryActivity
    (activity: activityName,
    dateTime: DateTime.now(),));
    notifyListeners();
  }
}

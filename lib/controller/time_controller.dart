import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:test_2/data/model/time_model/time_model.dart';

class TimeController with ChangeNotifier {
  TimeModel presentTimeModel = TimeModel(
      year: DateTime.now().year,
      month: DateTime.now().month,
      day: DateTime.now().day,
      hour: DateTime.now().second,
      minute: DateTime.now().minute);

  void updatePresentTimeModel() {
    notifyListeners();
    presentTimeModel = TimeModel(
        year: DateTime.now().year,
        month: DateTime.now().month,
        day: DateTime.now().day,
        hour: DateTime.now().second,
        minute: DateTime.now().minute);
  }
}

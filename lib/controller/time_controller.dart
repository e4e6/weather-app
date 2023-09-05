import 'package:test_2/data/model/time_model/time_model.dart';
DateTime dt = DateTime.now();

class TimeController {
  TimeModel presentTimeModel = TimeModel(
      year: dt.year,
      month: dt.month,
      day: dt.day,
      hour: dt.hour,
      minute: dt.minute);
}

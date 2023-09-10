import 'package:flutter/material.dart';

//<?> 이거 어디에 둬야함?

/// 이 파일이 하는 일에 대해서 생각해보면 앱의 가장 기본이 되는 디자인 값을 설정하는 기능이다.
/// 그렇기 때문에 어느 위치에 있든 큰 상관이 없지만 추천한다면 lib 가장 최상단이나 lib/config/theme 이런식으로
/// 태마 설정 폴더를 만들어서 사용하면 좋다.

class OriginalColorValue {
  final homeScreenBackgroundColor = Colors.blue[200];
  final widgetBackgroundColor = Colors.grey[350];
  final widgetTextColor = Colors.black;
}

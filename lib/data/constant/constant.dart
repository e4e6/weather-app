/// Constant 파일은 lib 폴더 최상단에 오도록 해야된다.
/// 물론 지금은 API KEY 값만 있지만 이런식으로 Constant 파일과 유사한 역할을 하는 애들을 여럿 만들기보다는 하나의 COnstant를 사용해서 해결하는게 좋다.

class Constant {
  static const String presentWeatherApiKey =
      '80944ecbc3c34f68effe23f113a190fa';
  //<?> const 앞에 static 무조건 붙여야 하는 이유
  /// 시스템에서 그렇게 해야 값에 접근할 수 있기 때문이다.
}
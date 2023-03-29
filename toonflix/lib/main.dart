import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// StatelessWidget을 상속받음으로써 App 클래스를 위젯으로 만듦
// StatelessWidget는 build메소드를 구현해야함
// build 메소드는 위젯의 UI를 만든다.
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // https://docs.flutter.dev/development/ui/widgets
    // 위젯은 위 링크를 통해 찾아보기

    // 앱의 'root 위젯'은 MaterialApp앱(구글의 디자인 시스템),
    // CupertinoApp앱(애플의 디자인 시스템)중 하나를 리턴해야한다.
    // 나만의 앱을 커스터마이즈 하려고 해도 둘중 하나를 선택해야한다.
    // material 스타일을 더 선호

    return MaterialApp(
      home: Scaffold(
        // 클래스 위에 마우스를 올려 사용할 수 있는 설정 확인
        appBar: AppBar(
          // 상단바
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text('Hello fultter!'),
        ),
        body: Center(
          child: Text('Hello world!'),
        ), // 마지막 ,를 찍어 가독성 증가
      ),
      // 모든 화면은 scaffold를 가져야함(네비게이션바, 상단버튼, 화면정렬 등)
    );
  }
}

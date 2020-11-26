// import 'package:flutter_test/flutter_test.dart';
// import 'package:testing/counter.dart';

// void main() {
//   // test("Counter value should be incremented", () {
//   //   final _counter = Counter();
//   //   _counter.increment();
//   //   expect(_counter.value, -1);
//   // });
//   group('Counter', () {
//     test('value should start at 0', () {
//       expect(Counter().value, 0);
//     });

//     test('value should be incremented', () {
//       final counter = Counter();

//       counter.increment();

//       expect(counter.value, 1);
//     });

//     test('value should be decremented', () {
//       final counter = Counter();

//       counter.decrement();

//       expect(counter.value, -1);
//     });
//   });
// }

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Define a test. The TestWidgets function also provides a WidgetTester
  // to work with. The WidgetTester allows building and interacting
  // with widgets in the test environment.
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(MyWidget(title: 'T', message: 'M'));

    // Create the Finders.
    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    // Use the `findsOneWidget` matcher provided by flutter_test to
    // verify that the Text widgets appear exactly once in the widget tree.
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}

class MyWidget extends StatelessWidget {
  final String title;
  final String message;

  const MyWidget({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(message),
        ),
      ),
    );
  }
}

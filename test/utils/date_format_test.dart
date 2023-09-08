import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Date Format Test', () {
    final String testData = '2023-09-08T10:38:06.341Z';

    final DateTime Function() test = () => DateTime.parse(testData);

    expect(test(), (_) => (_ as DateTime).year == 2023);
  });
}

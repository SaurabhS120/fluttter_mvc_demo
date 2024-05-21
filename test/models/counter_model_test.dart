import 'package:flutter_test/flutter_test.dart';
import '../../lib/models/counter_model.dart';

void main() {
  group('CounterModel Test', () {
    test('Initial counter value should be 0', () {
      final counter = CounterModel();
      expect(counter.counter, 0);
    });

    test('Counter value should be incremented', () {
      final counter = CounterModel();
      counter.increment();
      expect(counter.counter, 1);
    });
  });
}

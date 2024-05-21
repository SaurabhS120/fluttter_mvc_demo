import 'package:flutter_test/flutter_test.dart';
import '../../lib/controllers/counter_controller.dart';
import '../../lib/models/counter_model.dart';

void main() {
  group('CounterController Test', () {
    test('Initial counter value should be 0', () {
      final model = CounterModel();
      final controller = CounterController(model);
      expect(controller.counter, 0);
    });

    test('Counter value should be incremented via controller', () {
      final model = CounterModel();
      final controller = CounterController(model);
      controller.increment();
      expect(controller.counter, 1);
    });
  });
}

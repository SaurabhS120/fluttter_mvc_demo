import '../models/counter_model.dart';

class CounterController {
  final CounterModel _model;

  CounterController(this._model);

  int get counter => _model.counter;

  void increment() {
    _model.increment();
  }
}

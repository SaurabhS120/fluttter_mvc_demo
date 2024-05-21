import 'package:flutter/material.dart';
import '../controllers/counter_controller.dart';
import '../models/counter_model.dart';

class CounterView extends StatefulWidget {
  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final CounterModel _model = CounterModel();
  late CounterController _controller;
  bool _isTextVisible = true; // New state for text visibility

  @override
  void initState() {
    super.initState();
    _controller = CounterController(_model);
  }

  void _incrementCounter() {
    setState(() {
      _controller.increment();
    });
  }

  void _toggleTextVisibility() { // New method to toggle text visibility
    setState(() {
      _isTextVisible = !_isTextVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MVC Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${_controller.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            if (_isTextVisible) // Conditionally show text based on _isTextVisible
              Text(
                'This is a toggled text!',
                style: TextStyle(color: Colors.blue),
              ),
            SizedBox(height: 20), // Add some space
            ElevatedButton(
              onPressed: _toggleTextVisibility, // Button to toggle text visibility
              child: Text('Toggle Text Visibility'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

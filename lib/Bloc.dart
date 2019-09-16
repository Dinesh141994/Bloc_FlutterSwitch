

import 'package:rxdart/rxdart.dart';

class Bloc{

  //initialize bool type controller
  final _switchController = BehaviorSubject<bool>();

  /// Add data to the stream
  Function(bool) get setSwitch => _switchController.sink.add;

  /// Validate and retrieve data from the stream
  Stream<bool> get getSwitch => _switchController.stream;

}
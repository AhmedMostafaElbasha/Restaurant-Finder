import 'dart:async';

import '../DataLayer/location.dart';
import './bloc.dart';

class LocationBloc implements Bloc {
  Location _location;

  Location get selectedLocation => _location;

  final _locationController = StreamController<Location>();

  void selectLocation(Location location) {
    _location = location;
    _locationController.sink.add(location);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _locationController.close();
  }
}

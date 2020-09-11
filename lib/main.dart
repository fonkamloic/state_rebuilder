import 'package:flutter/material.dart';
import 'package:state_rebuilder/data/model/weather.dart';
import 'package:state_rebuilder/data/weather_repository.dart';
import 'package:state_rebuilder/pages/weather_search_page.dart';
import 'package:state_rebuilder/state/weather_store.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Injector(inject: [
        Inject<WeatherStore>(() => WeatherStore(FakeWeatherRepository())),
      ],
      builder: (_) => WeatherSearchPage(),
      ),
    );
  }
}

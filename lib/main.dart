import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test5/basketball_app/basketball.dart';

import 'package:test5/cubit/cubit/basketball/basketball_cubit.dart';
import 'package:test5/cubit/cubit/weather/weather_cubit.dart';
import 'package:test5/weather/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BasketballCubit(),
        ),
        BlocProvider(
          create: (context) => WeatherCubit(),
        ),
      ],
      child: const MaterialApp(
        home: Basketball(),
        // home: HomePage(),
      ),
    );
  }
}

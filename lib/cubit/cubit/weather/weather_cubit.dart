import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test5/weather/models/weather_model.dart';
import 'package:test5/weather/services/weather_service.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  String? cityname;
  WeatherModel? weather;
  void getWeatherData({required String cityName}) async {
    emit(WeatherLoading());

    WeatherService service = WeatherService();

    try {
      weather = await service.getWeather(cityName: cityName);
      emit(WeatherLoaded(weatherData: weather!));
    } catch (e) {
      emit(WeatherError(e.toString()));
    }
  }
}

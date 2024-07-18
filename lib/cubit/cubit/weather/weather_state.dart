part of 'weather_cubit.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherLoading extends WeatherState {}

final class WeatherLoaded extends WeatherState {
  final WeatherModel weatherData;
  WeatherLoaded({required this.weatherData});
}
final class WeatherError extends WeatherState {
  final String message;
  WeatherError(this.message);
}

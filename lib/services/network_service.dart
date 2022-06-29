import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_data_model.dart';

part 'network_service.g.dart';

const key = "3dd28d7360344ed7885101956222003";

@RestApi(baseUrl: "http://api.weatherapi.com/v1")
abstract class Network {
  factory Network(Dio dio, {String baseUrl}) = _Network;

  ///Get forecast
  @GET("/forecast.json")
  Future<Weather> getForeCastResponse(
  @Query('q') List<double> position,
    @Query('days') int days,
      );
}

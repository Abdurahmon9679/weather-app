import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:weather_app/models/weather_data_model.dart';
import 'package:weather_app/services/network_service.dart';
import 'package:dio/dio.dart';

class HomeController extends GetxController{

  bool isLoading = false;
  Weather? weather;

 Position position = Position(longitude: 65, latitude: 41, timestamp: DateTime.now(), accuracy: 1, altitude: 3, heading: 45, speed: 45, speedAccuracy: 45);

  Future<Position> getPosition() async {
   isLoading =true;
   update();
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return position;
  }

  @override
  void onInit() async{
   // position =await  getPosition();
  await getData(position);
    super.onInit();
  }

  Future<void>getData(Position position)async {

    final dio = Dio();
    final network = Network(dio);

    network.getForeCastResponse([position.latitude,position.longitude], 3).then((response) {
      weather = response;
      isLoading = false;
      update();
    });
  }
}

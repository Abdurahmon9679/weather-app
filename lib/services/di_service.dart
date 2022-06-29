import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:weather_app/controllers/home_controller.dart';

class DIService {
  static Future<void> init() async {
    Get.lazyPut(() => HomeController(), fenix: true);
  }
}

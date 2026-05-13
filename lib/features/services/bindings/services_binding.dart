import 'package:get/get.dart';
import 'package:doctor/features/services/controllers/services_controller.dart';

class ServicesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServicesController>(() => ServicesController());
  }
}

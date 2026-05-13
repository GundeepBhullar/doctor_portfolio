import 'package:get/get.dart';
import 'package:doctor/features/contact/controllers/contact_controller.dart';

class ContactBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactController>(() => ContactController());
  }
}

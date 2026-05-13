import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    _loadData();
  }

  void _loadData() {
    isLoading.value = true;
    // Simulate data loading
    Future.delayed(Duration(milliseconds: 500), () {
      isLoading.value = false;
    });
  }
}

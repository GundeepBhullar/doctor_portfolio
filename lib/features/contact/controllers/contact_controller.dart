import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  final RxBool isLoading = false.obs;
  final RxBool isSubmitting = false.obs;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final messageController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    _loadData();
  }

  void _loadData() {
    isLoading.value = true;
    Future.delayed(Duration(milliseconds: 500), () {
      isLoading.value = false;
    });
  }

  Future<void> submitForm() async {
    if (_validateForm()) {
      isSubmitting.value = true;
      try {
        // Simulate form submission
        await Future.delayed(Duration(seconds: 2));
        Get.snackbar('success'.tr, 'Contact form submitted successfully!');
        _clearForm();
      } catch (e) {
        Get.snackbar('error'.tr, 'Failed to submit form');
      } finally {
        isSubmitting.value = false;
      }
    }
  }

  bool _validateForm() {
    if (nameController.text.isEmpty || emailController.text.isEmpty || phoneController.text.isEmpty || messageController.text.isEmpty) {
      Get.snackbar('error'.tr, 'All fields are required');
      return false;
    }
    return true;
  }

  void _clearForm() {
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    messageController.clear();
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    messageController.dispose();
    super.onClose();
  }
}

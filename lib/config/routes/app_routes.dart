import 'package:get/get.dart';
import 'package:doctor/features/home/bindings/home_binding.dart';
import 'package:doctor/features/home/views/home_view.dart';
import 'package:doctor/features/about/bindings/about_binding.dart';
import 'package:doctor/features/about/views/about_view.dart';
import 'package:doctor/features/services/bindings/services_binding.dart';
import 'package:doctor/features/services/views/services_view.dart';
import 'package:doctor/features/contact/bindings/contact_binding.dart';
import 'package:doctor/features/contact/views/contact_view.dart';

class AppRoutes {
  static const String home = '/';
  static const String about = '/about';
  static const String services = '/services';
  static const String contact = '/contact';

  static final List<GetPage> pages = [
    GetPage(name: home, page: () => const HomeView(), binding: HomeBinding(), transition: Transition.fadeIn, transitionDuration: const Duration(milliseconds: 300)),
    GetPage(name: about, page: () => const AboutView(), binding: AboutBinding(), transition: Transition.fadeIn, transitionDuration: const Duration(milliseconds: 300)),
    GetPage(name: services, page: () => const ServicesView(), binding: ServicesBinding(), transition: Transition.fadeIn, transitionDuration: const Duration(milliseconds: 300)),
    GetPage(name: contact, page: () => const ContactView(), binding: ContactBinding(), transition: Transition.fadeIn, transitionDuration: const Duration(milliseconds: 300)),
  ];
}

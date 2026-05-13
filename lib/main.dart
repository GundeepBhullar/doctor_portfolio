import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:doctor/config/theme/app_theme.dart';
import 'package:doctor/config/routes/app_routes.dart';
import 'package:doctor/l10n/translations.dart';

void main() {
  runApp(const DoctorClinicApp());
}

class DoctorClinicApp extends StatelessWidget {
  const DoctorClinicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          title: "Dr. Kang's Homoeopathic Clinic",
          debugShowCheckedModeBanner: false,

          // Theme Configuration
          theme: AppTheme.lightTheme,

          // Routing Configuration
          initialRoute: AppRoutes.home,
          getPages: AppRoutes.pages,

          // Localization Configuration
          translations: Translation(),
          locale: const Locale('en', 'US'),
          fallbackLocale: const Locale('en', 'US'),

          // Navigation Configuration
          navigatorObservers: [],
        );
      },
    );
  }
}

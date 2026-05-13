import 'package:url_launcher/url_launcher.dart';

class LaunchUtils {
  // Launch WhatsApp
  static Future<void> launchWhatsApp({required String phoneNumber, required String message}) async {
    try {
      final String whatsappUrl = 'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';
      if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
        await launchUrl(Uri.parse(whatsappUrl), mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      rethrow;
    }
  }

  // Launch Email
  static Future<void> launchEmail({required String email, required String subject, required String body}) async {
    try {
      final String emailUrl = 'mailto:$email?subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}';
      if (await canLaunchUrl(Uri.parse(emailUrl))) {
        await launchUrl(Uri.parse(emailUrl));
      }
    } catch (e) {
      rethrow;
    }
  }

  // Launch Phone Call
  static Future<void> launchPhoneCall({required String phoneNumber}) async {
    try {
      final String phoneUrl = 'tel:$phoneNumber';
      if (await canLaunchUrl(Uri.parse(phoneUrl))) {
        await launchUrl(Uri.parse(phoneUrl));
      }
    } catch (e) {
      rethrow;
    }
  }

  // Launch Maps
  static Future<void> launchMaps({required String location}) async {
    try {
      final String mapsUrl = 'https://maps.google.com/?q=${Uri.encodeComponent(location)}';
      if (await canLaunchUrl(Uri.parse(mapsUrl))) {
        await launchUrl(Uri.parse(mapsUrl), mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      rethrow;
    }
  }
}

class ResponsiveUtils {
  // Breakpoints
  static const double mobileBreakpoint = 600;
  static const double tabletBreakpoint = 900;
  static const double desktopBreakpoint = 1200;

  static bool isMobile(double width) => width < mobileBreakpoint;

  static bool isTablet(double width) => width >= mobileBreakpoint && width < tabletBreakpoint;

  static bool isDesktop(double width) => width >= desktopBreakpoint;

  // Get responsive value
  static T getResponsiveValue<T>({required T mobile, required T tablet, required T desktop, required double screenWidth}) {
    if (isMobile(screenWidth)) {
      return mobile;
    } else if (isTablet(screenWidth)) {
      return tablet;
    } else {
      return desktop;
    }
  }
}

class TextUtils {
  // Truncate text
  static String truncate({required String text, required int maxLength, String suffix = '...'}) {
    if (text.length > maxLength) {
      return '${text.substring(0, maxLength)}$suffix';
    }
    return text;
  }

  // Capitalize first letter
  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }
}

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
  static String truncate({required String text, required int maxLength, String suffix = '...'}) {
    if (text.length > maxLength) {
      return '${text.substring(0, maxLength)}$suffix';
    }
    return text;
  }

  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }
}

/// Responsive font sizes — returns raw logical-pixel values (no .sp needed).
/// Mobile < 600 · Tablet 600–900 · Desktop ≥ 900
class AppTextSizes {
  // Doctor name on home hero
  static double heroName(double w) =>
      ResponsiveUtils.getResponsiveValue<double>(screenWidth: w, mobile: 24, tablet: 30, desktop: 38);

  // Page-banner headings (About / Services / Contact hero strips)
  static double pageTitle(double w) =>
      ResponsiveUtils.getResponsiveValue<double>(screenWidth: w, mobile: 20, tablet: 24, desktop: 28);

  // Section headings (SectionTitle widget, CTA headings)
  static double sectionHeading(double w) =>
      ResponsiveUtils.getResponsiveValue<double>(screenWidth: w, mobile: 18, tablet: 20, desktop: 22);

  // Card / sub-section headings
  static double cardHeading(double w) =>
      ResponsiveUtils.getResponsiveValue<double>(screenWidth: w, mobile: 14, tablet: 15, desktop: 16);

  // Standard body / description text
  static double body(double w) =>
      ResponsiveUtils.getResponsiveValue<double>(screenWidth: w, mobile: 13, tablet: 14, desktop: 15);

  // Smaller card descriptions / detail text
  static double bodySmall(double w) =>
      ResponsiveUtils.getResponsiveValue<double>(screenWidth: w, mobile: 12, tablet: 13, desktop: 13);

  // Copyright, tiny labels
  static double caption(double w) =>
      ResponsiveUtils.getResponsiveValue<double>(screenWidth: w, mobile: 10, tablet: 11, desktop: 11);

  // "Welcome" label, qualification line below doctor name, hero subtitles
  static double heroLabel(double w) =>
      ResponsiveUtils.getResponsiveValue<double>(screenWidth: w, mobile: 13, tablet: 14, desktop: 15);

  // AppBar navigation buttons
  static double navItem(double w) =>
      ResponsiveUtils.getResponsiveValue<double>(screenWidth: w, mobile: 12, tablet: 13, desktop: 14);

  // AppBar clinic name / page title
  static double appBarTitle(double w) =>
      ResponsiveUtils.getResponsiveValue<double>(screenWidth: w, mobile: 14, tablet: 15, desktop: 16);

  // Button labels
  static double buttonLabel(double w) =>
      ResponsiveUtils.getResponsiveValue<double>(screenWidth: w, mobile: 13, tablet: 14, desktop: 14);
}

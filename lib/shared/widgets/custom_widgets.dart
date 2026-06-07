import 'package:doctor/config/routes/app_routes.dart';
import 'package:doctor/shared/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'package:doctor/config/theme/app_colors.dart';
import 'package:doctor/shared/constants/app_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showLogo;
  final VoidCallback? onMenuTap;

  const CustomAppBar({required this.title, this.showLogo = true, this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    final double currentWidth = MediaQuery.of(context).size.width;

    List<Widget> actionList = ResponsiveUtils.getResponsiveValue<List<Widget>>(
      screenWidth: currentWidth,
      mobile: [
        Padding(
          padding: const EdgeInsets.only(right: AppConstants.spacingSmall),
          child: LanguageSwitcher(),
        ),
      ],
      tablet: [
        ActionButton(onPressed: () => Get.offAndToNamed(AppRoutes.home), title: 'home'.tr),
        Gap(3.w),
        ActionButton(onPressed: () => Get.offAndToNamed(AppRoutes.about), title: 'about'.tr),
        Gap(3.w),
        ActionButton(onPressed: () => Get.offAndToNamed(AppRoutes.services), title: 'services'.tr),
        Gap(3.w),
        ActionButton(onPressed: () => Get.offAndToNamed(AppRoutes.contact), title: 'contact'.tr),
        Gap(3.w),
        Padding(
          padding: const EdgeInsets.only(right: AppConstants.spacingSmall),
          child: LanguageSwitcher(),
        ),
      ],
      desktop: [
        ActionButton(onPressed: () => Get.offAndToNamed(AppRoutes.home), title: 'home'.tr),
        Gap(3.w),
        ActionButton(onPressed: () => Get.offAndToNamed(AppRoutes.about), title: 'about'.tr),
        Gap(3.w),
        ActionButton(onPressed: () => Get.offAndToNamed(AppRoutes.services), title: 'services'.tr),
        Gap(3.w),
        ActionButton(onPressed: () => Get.offAndToNamed(AppRoutes.contact), title: 'contact'.tr),
        Gap(3.w),
        Padding(
          padding: const EdgeInsets.only(right: AppConstants.spacingSmall),
          child: LanguageSwitcher(),
        ),
      ],
    );

    return AppBar(
      backgroundColor: AppColors.primary,
      // elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (showLogo)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'clinic_name'.tr,
                  style: TextStyle(fontSize: AppTextSizes.appBarTitle(currentWidth), fontWeight: FontWeight.bold, color: AppColors.textInverse),
                ),
                // Text(
                //   AppConstants.doctorName,
                //   style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: AppColors.textInverse),
                // ),
              ],
            )
          else
            Text(
              title,
              style: TextStyle(fontSize: AppTextSizes.appBarTitle(currentWidth), fontWeight: FontWeight.w600, color: AppColors.textInverse),
            ),
        ],
      ),
      actions: actionList,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class ActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const ActionButton({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onPressed,
      child: Text(
        title,
        style: TextStyle(fontSize: AppTextSizes.navItem(sw), fontWeight: FontWeight.w600, color: AppColors.textInverse),
      ),
    );
  }
}

class LanguageSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        Get.updateLocale(Locale(value.split('_')[0], value.split('_')[1]));
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(value: 'en_US', child: Text('English')),
        PopupMenuItem<String>(value: 'hi_IN', child: Text('हिंदी')),
        PopupMenuItem<String>(value: 'pa_IN', child: Text('ਪੰਜਾਬੀ')),
      ],
      icon: Icon(Icons.language, color: AppColors.textInverse),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isLoading;
  final IconData? icon;
  final double? width;
  final double? height;
  final double? fontSize;

  const PrimaryButton({required this.label, required this.onPressed, this.isLoading = false, this.icon, this.width, this.height, this.fontSize});

  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: height ?? 50,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textInverse,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppConstants.radiusMedium)),
        ),
        child: isLoading
            ? SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: AppColors.textInverse, strokeWidth: 2))
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) Icon(icon),
                  if (icon != null) SizedBox(width: 8),
                  Text(
                    label,
                    style: TextStyle(fontSize: fontSize ?? AppTextSizes.buttonLabel(sw), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final double? width;
  final double? height;

  const SecondaryButton({required this.label, required this.onPressed, this.icon, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: height ?? 50,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.textInverse,
          side: BorderSide(color: AppColors.borderPrimary, width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppConstants.radiusMedium)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon),
            if (icon != null) SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(fontSize: AppTextSizes.buttonLabel(sw), fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}

class ResponsiveContainer extends StatelessWidget {
  final Widget mobileView;
  final Widget? tabletView;
  final Widget? desktopView;

  const ResponsiveContainer({required this.mobileView, this.tabletView, this.desktopView});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileView;
        } else if (constraints.maxWidth < 900) {
          return tabletView ?? mobileView;
        } else {
          return desktopView ?? tabletView ?? mobileView;
        }
      },
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final String? subtitle;
  final TextAlign textAlign;
  final EdgeInsets padding;

  const SectionTitle({required this.title, this.subtitle, this.textAlign = TextAlign.center, this.padding = const EdgeInsets.all(AppConstants.spacingLarge)});

  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    return Padding(
      padding: padding,
      child: Column(
        children: [
          Text(
            title,
            textAlign: textAlign,
            style: TextStyle(fontSize: AppTextSizes.sectionHeading(sw), fontWeight: FontWeight.w700, color: AppColors.textPrimary),
          ),
          if (subtitle != null) ...[
            SizedBox(height: AppConstants.spacingSmall),
            Text(
              subtitle!,
              textAlign: textAlign,
              style: TextStyle(fontSize: AppTextSizes.body(sw), fontWeight: FontWeight.w400, color: AppColors.textSecondary),
            ),
          ],
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback? onTap;

  const ServiceCard({required this.title, required this.description, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    return Card(
      elevation: AppConstants.elevationSmall,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppConstants.radiusLarge)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppConstants.radiusLarge),
        child: Padding(
          padding: EdgeInsets.all(AppConstants.spacingLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(AppConstants.spacingMedium),
                decoration: BoxDecoration(color: AppColors.primaryLighter, borderRadius: BorderRadius.circular(AppConstants.radiusMedium)),
                child: Icon(icon, color: AppColors.primary, size: AppConstants.fontSizeXXL.sp),
              ),
              SizedBox(height: AppConstants.spacingMedium),
              Text(
                title,
                style: TextStyle(fontSize: AppTextSizes.cardHeading(sw), fontWeight: FontWeight.w600, color: AppColors.textPrimary),
              ),
              SizedBox(height: AppConstants.spacingSmall),
              Text(
                description,
                style: TextStyle(fontSize: AppTextSizes.bodySmall(sw), fontWeight: FontWeight.w400, color: AppColors.textSecondary, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactMethodCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final VoidCallback onTap;

  const ContactMethodCard({required this.title, required this.value, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    return Card(
      elevation: AppConstants.elevationSmall,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppConstants.radiusLarge)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppConstants.radiusLarge),
        child: Padding(
          padding: EdgeInsets.all(AppConstants.spacingLarge),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(AppConstants.spacingMedium),
                decoration: BoxDecoration(color: AppColors.secondaryLighter, borderRadius: BorderRadius.circular(AppConstants.radiusMedium)),
                child: Icon(icon, color: AppColors.secondary, size: AppConstants.fontSizeXXL.sp),
              ),
              SizedBox(height: AppConstants.spacingMedium),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: AppTextSizes.cardHeading(sw), fontWeight: FontWeight.w600, color: AppColors.textPrimary),
              ),
              SizedBox(height: AppConstants.spacingSmall),
              Text(
                value,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: AppTextSizes.bodySmall(sw), fontWeight: FontWeight.w400, color: AppColors.textSecondary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

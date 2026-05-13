import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'package:doctor/config/theme/app_colors.dart';
import 'package:doctor/shared/constants/app_constants.dart';
import 'package:doctor/config/routes/app_routes.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(vertical: AppConstants.spacingXLarge, horizontal: AppConstants.spacingLarge),
      child: Column(
        children: [
          // Footer Content
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                // Mobile Layout
                return Column(
                  children: [
                    _buildFooterSection(),
                    SizedBox(height: AppConstants.spacingXLarge),
                    _buildQuickLinks(),
                    SizedBox(height: AppConstants.spacingXLarge),
                    _buildSocialLinks(),
                  ],
                );
              } else {
                // Desktop Layout
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _buildFooterSection()),
                    Expanded(child: _buildQuickLinks()),
                    Expanded(child: _buildSocialLinks()),
                  ],
                );
              }
            },
          ),
          SizedBox(height: AppConstants.spacingXLarge),
          Divider(color: AppColors.textInverse.withOpacity(0.2)),
          SizedBox(height: AppConstants.spacingMedium),
          // Copyright
          Text(
            '© 2024 ${AppConstants.clinicName}. ${'all_rights_reserved'.tr}',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: AppColors.textInverse),
          ),
          SizedBox(height: AppConstants.spacingSmall),
          Text(
            '${'developed_by'.tr} iWeb Technologies',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.8)),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppConstants.clinicName,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: AppColors.textInverse),
        ),
        SizedBox(height: AppConstants.spacingSmall),
        Text(
          AppConstants.doctorName,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500, color: AppColors.textInverse.withOpacity(0.9)),
        ),
        SizedBox(height: AppConstants.spacingSmall),
        Text(
          AppConstants.qualification,
          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.8)),
        ),
        SizedBox(height: AppConstants.spacingSmall),
        Text(
          AppConstants.location,
          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.8)),
        ),
      ],
    );
  }

  Widget _buildQuickLinks() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Links',
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: AppColors.textInverse),
        ),
        SizedBox(height: AppConstants.spacingMedium),
        _buildFooterLink('home'.tr, AppRoutes.home),
        _buildFooterLink('about'.tr, AppRoutes.about),
        _buildFooterLink('services'.tr, AppRoutes.services),
        _buildFooterLink('contact'.tr, AppRoutes.contact),
      ],
    );
  }

  Widget _buildFooterLink(String label, String route) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppConstants.spacingSmall),
      child: GestureDetector(
        onTap: () => Get.toNamed(route),
        child: Text(
          label,
          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.9), decoration: TextDecoration.none),
        ),
      ),
    );
  }

  Widget _buildSocialLinks() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'follow_us'.tr,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: AppColors.textInverse),
        ),
        SizedBox(height: AppConstants.spacingMedium),
        Row(
          children: [
            _buildSocialIcon(Icons.facebook, 'https://facebook.com'),
            SizedBox(width: AppConstants.spacingMedium),
            _buildSocialIcon(Icons.mail, AppConstants.email),
            SizedBox(width: AppConstants.spacingMedium),
            _buildSocialIcon(Icons.phone, AppConstants.phone),
          ],
        ),
      ],
    );
  }

  Widget _buildSocialIcon(IconData icon, String url) {
    return Container(
      padding: EdgeInsets.all(AppConstants.spacingSmall),
      decoration: BoxDecoration(color: AppColors.textInverse.withOpacity(0.2), shape: BoxShape.circle),
      child: Icon(icon, color: AppColors.textInverse, size: 14.sp),
    );
  }
}

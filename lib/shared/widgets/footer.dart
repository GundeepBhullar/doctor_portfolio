import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'package:doctor/config/theme/app_colors.dart';
import 'package:doctor/shared/constants/app_constants.dart';
import 'package:doctor/shared/utils/utils.dart';
import 'package:doctor/config/routes/app_routes.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(vertical: AppConstants.spacingXLarge, horizontal: AppConstants.spacingLarge),
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return Column(
                  children: [
                    _buildFooterSection(sw),
                    SizedBox(height: AppConstants.spacingXLarge),
                    _buildQuickLinks(sw),
                    SizedBox(height: AppConstants.spacingXLarge),
                    _buildSocialLinks(sw),
                  ],
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _buildFooterSection(sw)),
                    Expanded(child: _buildQuickLinks(sw)),
                    Expanded(child: _buildSocialLinks(sw)),
                  ],
                );
              }
            },
          ),
          SizedBox(height: AppConstants.spacingXLarge),
          Divider(color: AppColors.textInverse.withOpacity(0.2)),
          SizedBox(height: AppConstants.spacingMedium),
          Text(
            '© 2024 ${AppConstants.clinicName}. ${'all_rights_reserved'.tr}',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: AppTextSizes.caption(sw), fontWeight: FontWeight.w400, color: AppColors.textInverse),
          ),
          SizedBox(height: AppConstants.spacingSmall),
          Text(
            '${'developed_by'.tr} Dtech Consultants',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: AppTextSizes.caption(sw), fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.8)),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterSection(double sw) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppConstants.clinicName,
          style: TextStyle(fontSize: AppTextSizes.cardHeading(sw), fontWeight: FontWeight.w700, color: AppColors.textInverse),
        ),
        SizedBox(height: AppConstants.spacingSmall),
        Text(
          AppConstants.doctorName,
          style: TextStyle(fontSize: AppTextSizes.body(sw), fontWeight: FontWeight.w700, color: AppColors.textInverse.withOpacity(0.9)),
        ),
        SizedBox(height: AppConstants.spacingSmall),
        Text(
          AppConstants.qualification,
          style: TextStyle(fontSize: AppTextSizes.bodySmall(sw), fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.8)),
        ),
        SizedBox(height: AppConstants.spacingSmall),
        Text(
          AppConstants.location,
          style: TextStyle(fontSize: AppTextSizes.bodySmall(sw), fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.8)),
        ),
      ],
    );
  }

  Widget _buildQuickLinks(double sw) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Links',
          style: TextStyle(fontSize: AppTextSizes.body(sw), fontWeight: FontWeight.w700, color: AppColors.textInverse),
        ),
        SizedBox(height: AppConstants.spacingMedium),
        _buildFooterLink('home'.tr, AppRoutes.home, sw),
        _buildFooterLink('about'.tr, AppRoutes.about, sw),
        _buildFooterLink('services'.tr, AppRoutes.services, sw),
        _buildFooterLink('contact'.tr, AppRoutes.contact, sw),
      ],
    );
  }

  Widget _buildFooterLink(String label, String route, double sw) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppConstants.spacingSmall),
      child: GestureDetector(
        onTap: () => Get.offAndToNamed(route),
        child: Text(
          label,
          style: TextStyle(fontSize: AppTextSizes.bodySmall(sw), fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.9), decoration: TextDecoration.none),
        ),
      ),
    );
  }

  Widget _buildSocialLinks(double sw) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'follow_us'.tr,
          style: TextStyle(fontSize: AppTextSizes.body(sw), fontWeight: FontWeight.w700, color: AppColors.textInverse),
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
      child: Icon(icon, color: AppColors.textInverse, size: AppConstants.fontSizeLG.sp),
    );
  }
}

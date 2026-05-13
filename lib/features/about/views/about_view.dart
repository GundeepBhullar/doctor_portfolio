import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'package:doctor/features/about/controllers/about_controller.dart';
import 'package:doctor/config/theme/app_colors.dart';
import 'package:doctor/shared/constants/app_constants.dart';
import 'package:doctor/shared/widgets/custom_widgets.dart';
import 'package:doctor/shared/widgets/footer.dart';
import 'package:doctor/config/routes/app_routes.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutController>(
      builder: (controller) {
        return Scaffold(
          appBar: CustomAppBar(title: 'about'.tr, showLogo: false),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Hero Section
                _buildAboutHero(),

                // About Content
                _buildAboutContent(),

                // Qualifications
                _buildQualifications(),

                // CTA
                _buildCtaSection(),

                // Footer
                Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildAboutHero() {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: Column(
        children: [
          Text(
            'about_title'.tr,
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700, color: AppColors.textInverse),
          ),
          SizedBox(height: AppConstants.spacingMedium),
          Text(
            AppConstants.doctorName,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, color: AppColors.secondary),
          ),
        ],
      ),
    );
  }

  Widget _buildAboutContent() {
    return Container(
      color: AppColors.background,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              bool isDesktop = constraints.maxWidth > 900;
              return isDesktop
                  ? Row(
                      children: [
                        Expanded(child: _buildAboutImage()),
                        SizedBox(width: AppConstants.spacingXLarge),
                        Expanded(child: _buildAboutText()),
                      ],
                    )
                  : Column(
                      children: [
                        _buildAboutImage(),
                        SizedBox(height: AppConstants.spacingXLarge),
                        _buildAboutText(),
                      ],
                    );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAboutImage() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppConstants.radiusLarge),
        boxShadow: [BoxShadow(color: AppColors.shadowColor, blurRadius: 20, spreadRadius: 5)],
      ),
      child: Center(
        child: Icon(Icons.person, size: 120.sp, color: AppColors.primary),
      ),
    );
  }

  Widget _buildAboutText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'about_description'.tr,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColors.textSecondary, height: 1.8),
        ),
        SizedBox(height: AppConstants.spacingXLarge),
        Text(
          'philosophy'.tr,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
        ),
        SizedBox(height: AppConstants.spacingSmall),
        Text(
          'philosophy_description'.tr,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColors.textSecondary, height: 1.8),
        ),
      ],
    );
  }

  Widget _buildQualifications() {
    return Container(
      color: AppColors.surface,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: Column(
        children: [
          SectionTitle(title: 'Qualifications & Certifications'),
          SizedBox(height: AppConstants.spacingXLarge),
          Card(
            elevation: AppConstants.elevationSmall,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppConstants.radiusLarge)),
            child: Padding(
              padding: EdgeInsets.all(AppConstants.spacingLarge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildQualificationItem('BHMS', 'Bachelor of Homoeopathic Medicine & Surgery', 'Panjab University, Chandigarh'),
                  SizedBox(height: AppConstants.spacingLarge),
                  Divider(),
                  SizedBox(height: AppConstants.spacingLarge),
                  _buildQualificationItem('Clinical Experience', 'Specialized in treating chronic and acute conditions with homoeopathy', 'Multiple years of clinical practice'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQualificationItem(String title, String subtitle, String detail) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: AppColors.primary),
        ),
        SizedBox(height: AppConstants.spacingSmall),
        Text(
          subtitle,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
        ),
        SizedBox(height: AppConstants.spacingSmall),
        Text(
          detail,
          style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400, color: AppColors.textSecondary),
        ),
      ],
    );
  }

  Widget _buildCtaSection() {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: Column(
        children: [
          Text(
            'Get Professional Homoeopathic Care Today',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: AppColors.textInverse),
          ),
          SizedBox(height: AppConstants.spacingLarge),
          PrimaryButton(label: 'cta_book_appointment'.tr, onPressed: () => Get.toNamed(AppRoutes.contact)),
        ],
      ),
    );
  }
}

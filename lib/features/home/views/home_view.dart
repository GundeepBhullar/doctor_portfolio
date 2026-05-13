import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'package:doctor/features/home/controllers/home_controller.dart';
import 'package:doctor/config/theme/app_colors.dart';
import 'package:doctor/shared/constants/app_constants.dart';
import 'package:doctor/shared/widgets/custom_widgets.dart';
import 'package:doctor/shared/widgets/footer.dart';
import 'package:doctor/config/routes/app_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: CustomAppBar(title: 'home'.tr),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Hero Section
                _buildHeroSection(),

                // About Section
                _buildAboutSection(),

                // Services Preview
                _buildServicesPreview(),

                // CTA Section
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

  Widget _buildHeroSection() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: AppColors.primaryGradient, begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isDesktop = constraints.maxWidth > 900;
            return isDesktop
                ? Row(
                    children: [
                      Expanded(child: _buildHeroContent()),
                      Expanded(child: _buildHeroImage()),
                    ],
                  )
                : Column(
                    children: [
                      _buildHeroImage(),
                      SizedBox(height: AppConstants.spacingXLarge),
                      _buildHeroContent(),
                    ],
                  );
          },
        ),
      ),
    );
  }

  Widget _buildHeroContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'welcome'.tr,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: AppColors.textInverse.withOpacity(0.9)),
        ),
        SizedBox(height: AppConstants.spacingMedium),
        Text(
          'doctor_name'.tr,
          style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w700, color: AppColors.textInverse),
        ),
        Text(
          'qualification'.tr,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.9)),
        ),
        SizedBox(height: AppConstants.spacingLarge),
        Text(
          'welcome_subtitle'.tr,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.85), height: 1.6),
        ),
        SizedBox(height: AppConstants.spacingXLarge),
        Wrap(
          spacing: AppConstants.spacingMedium,
          runSpacing: AppConstants.spacingMedium,
          children: [
            PrimaryButton(label: 'cta_book_appointment'.tr, onPressed: () => Get.toNamed(AppRoutes.contact), width: 180),
            SecondaryButton(label: 'cta_learn_more'.tr, onPressed: () => Get.toNamed(AppRoutes.about), width: 180),
          ],
        ),
      ],
    );
  }

  Widget _buildHeroImage() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppConstants.radiusLarge),
        boxShadow: [BoxShadow(color: AppColors.shadowColor, blurRadius: 20, spreadRadius: 5)],
      ),
      child: Center(
        child: Icon(Icons.health_and_safety, size: 120.sp, color: AppColors.primary),
      ),
    );
  }

  Widget _buildAboutSection() {
    return Container(
      color: AppColors.background,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: Column(
        children: [
          SectionTitle(title: 'clinic_name'.tr, subtitle: 'location'.tr),
          SizedBox(height: AppConstants.spacingXLarge),
          LayoutBuilder(
            builder: (context, constraints) {
              bool isDesktop = constraints.maxWidth > 900;
              List<String> highlights = ['philosophy', 'experience', 'services_title'];

              if (isDesktop) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: highlights.map((highlight) => Expanded(child: _buildHighlightCard(highlight))).toList(),
                );
              } else {
                return Column(
                  children: highlights
                      .map(
                        (highlight) => Column(
                          children: [
                            _buildHighlightCard(highlight),
                            SizedBox(height: AppConstants.spacingMedium),
                          ],
                        ),
                      )
                      .toList(),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHighlightCard(String key) {
    return Card(
      elevation: AppConstants.elevationSmall,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppConstants.radiusLarge)),
      child: Padding(
        padding: EdgeInsets.all(AppConstants.spacingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              key.tr,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
            ),
            SizedBox(height: AppConstants.spacingSmall),
            Text(
              '${key}_description'.tr,
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: AppColors.textSecondary, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServicesPreview() {
    return Container(
      color: AppColors.surface,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: Column(
        children: [
          SectionTitle(title: 'services_title'.tr, subtitle: 'services_subtitle'.tr),
          SizedBox(height: AppConstants.spacingXLarge),
          LayoutBuilder(
            builder: (context, constraints) {
              bool isDesktop = constraints.maxWidth > 900;
              int crossAxisCount = isDesktop ? 3 : (constraints.maxWidth > 600 ? 2 : 1);

              return GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: AppConstants.spacingLarge,
                crossAxisSpacing: AppConstants.spacingLarge,
                children: [
                  ServiceCard(title: 'chronic_diseases'.tr, description: 'chronic_description'.tr, icon: Icons.medical_services),
                  ServiceCard(title: 'acute_conditions'.tr, description: 'acute_description'.tr, icon: Icons.emergency),
                  ServiceCard(title: 'skin_disorders'.tr, description: 'skin_description'.tr, icon: Icons.healing),
                ],
              );
            },
          ),
          SizedBox(height: AppConstants.spacingXLarge),
          PrimaryButton(label: 'cta_learn_more'.tr, onPressed: () => Get.toNamed(AppRoutes.services)),
        ],
      ),
    );
  }

  Widget _buildCtaSection() {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: Column(
        children: [
          Text(
            'Ready to Book Your Appointment?',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700, color: AppColors.textInverse),
          ),
          SizedBox(height: AppConstants.spacingLarge),
          PrimaryButton(label: 'cta_book_appointment'.tr, onPressed: () => Get.toNamed(AppRoutes.contact)),
        ],
      ),
    );
  }
}

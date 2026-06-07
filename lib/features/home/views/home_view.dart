import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'package:doctor/features/home/controllers/home_controller.dart';
import 'package:doctor/config/theme/app_colors.dart';
import 'package:doctor/shared/constants/app_constants.dart';
import 'package:doctor/shared/utils/utils.dart';
import 'package:doctor/shared/widgets/custom_widgets.dart';
import 'package:doctor/shared/widgets/footer.dart';
import 'package:doctor/config/routes/app_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        final double sw = MediaQuery.of(context).size.width;
        return Scaffold(
          appBar: CustomAppBar(title: 'home'.tr),
          body: SingleChildScrollView(child: Column(children: [_buildHeroSection(sw), _buildAboutSection(sw), _buildServicesPreview(), _buildCtaSection(sw), Footer()])),
        );
      },
    );
  }

  Widget _buildHeroSection(double sw) {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(flex: 2, child: _buildHeroContent(sw)),
                      Flexible(flex: 1, child: _buildHeroImage()),
                    ],
                  )
                : Column(
                    children: [
                      _buildHeroImage(),
                      SizedBox(height: AppConstants.spacingXLarge),
                      _buildHeroContent(sw),
                    ],
                  );
          },
        ),
      ),
    );
  }

  Widget _buildHeroContent(double sw) {
    final double buttonWidth = ResponsiveUtils.getResponsiveValue<double>(screenWidth: sw, mobile: 85.w, tablet: 40.w, desktop: 22.w);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'welcome'.tr,
          style: TextStyle(fontSize: AppTextSizes.heroLabel(sw), fontWeight: FontWeight.w500, color: AppColors.textInverse.withOpacity(0.9)),
        ),
        SizedBox(height: AppConstants.spacingMedium),
        Text(
          'doctor_name'.tr,
          style: TextStyle(fontSize: AppTextSizes.heroName(sw), fontWeight: FontWeight.w700, color: AppColors.textInverse),
        ),
        Text(
          'qualification'.tr,
          style: TextStyle(fontSize: AppTextSizes.heroLabel(sw), fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.9)),
        ),
        SizedBox(height: AppConstants.spacingLarge),
        Text(
          'welcome_subtitle'.tr,
          style: TextStyle(fontSize: AppTextSizes.body(sw), fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.85), height: 1.6),
        ),
        SizedBox(height: AppConstants.spacingXLarge),
        Wrap(
          spacing: AppConstants.spacingMedium,
          runSpacing: AppConstants.spacingMedium,
          children: [
            PrimaryButton(label: 'cta_book_appointment'.tr, onPressed: () => Get.offAndToNamed(AppRoutes.contact), width: buttonWidth),
            SecondaryButton(label: 'cta_learn_more'.tr, onPressed: () => Get.offAndToNamed(AppRoutes.about), width: buttonWidth),
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
      child: Center(child: Image.asset('assets/icons/drKangLogo.jpeg')),
    );
  }

  Widget _buildAboutSection(double sw) {
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
              List<String> highlights = ['philosophy', 'services_title'];

              if (isDesktop) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: highlights.map((h) => Expanded(child: _buildHighlightCard(h, sw))).toList(),
                );
              } else {
                return Column(
                  children: highlights
                      .map(
                        (h) => Column(
                          children: [
                            SizedBox(width: double.infinity, child: _buildHighlightCard(h, sw)),
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

  Widget _buildHighlightCard(String key, double sw) {
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
              style: TextStyle(fontSize: AppTextSizes.cardHeading(sw), fontWeight: FontWeight.w600, color: AppColors.textPrimary),
            ),
            SizedBox(height: AppConstants.spacingSmall),
            Text(
              '${key}_description'.tr,
              style: TextStyle(fontSize: AppTextSizes.bodySmall(sw), fontWeight: FontWeight.w400, color: AppColors.textSecondary, height: 1.5),
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

  Widget _buildCtaSection(double sw) {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: Column(
        children: [
          Text(
            'Ready to Book Your Appointment?',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: AppTextSizes.sectionHeading(sw), fontWeight: FontWeight.w700, color: AppColors.textInverse),
          ),
          SizedBox(height: AppConstants.spacingLarge),
          SecondaryButton(label: 'cta_book_appointment'.tr, onPressed: () => Get.toNamed(AppRoutes.contact)),
        ],
      ),
    );
  }
}

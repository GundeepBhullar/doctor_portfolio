import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'package:doctor/features/services/controllers/services_controller.dart';
import 'package:doctor/config/theme/app_colors.dart';
import 'package:doctor/shared/constants/app_constants.dart';
import 'package:doctor/shared/widgets/custom_widgets.dart';
import 'package:doctor/shared/widgets/footer.dart';
import 'package:doctor/config/routes/app_routes.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ServicesController>(
      builder: (controller) {
        return Scaffold(
          appBar: CustomAppBar(title: 'services'.tr, showLogo: false),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Hero Section
                _buildServicesHero(),

                // Services Grid
                _buildServicesGrid(),

                // Why Choose Us
                _buildWhyChooseUs(),

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

  Widget _buildServicesHero() {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: Column(
        children: [
          Text(
            'services_title'.tr,
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700, color: AppColors.textInverse),
          ),
          SizedBox(height: AppConstants.spacingMedium),
          Text(
            'services_subtitle'.tr,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.9)),
          ),
        ],
      ),
    );
  }

  Widget _buildServicesGrid() {
    return Container(
      color: AppColors.background,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: LayoutBuilder(
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
              ServiceCard(title: 'digestive_health'.tr, description: 'digestive_description'.tr, icon: Icons.restaurant_menu),
              ServiceCard(title: 'women_health'.tr, description: 'women_description'.tr, icon: Icons.wc),
              ServiceCard(title: 'child_health'.tr, description: 'child_description'.tr, icon: Icons.child_care),
            ],
          );
        },
      ),
    );
  }

  Widget _buildWhyChooseUs() {
    return Container(
      color: AppColors.surface,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: Column(
        children: [
          SectionTitle(title: 'Why Choose Our Clinic?'),
          SizedBox(height: AppConstants.spacingXLarge),
          LayoutBuilder(
            builder: (context, constraints) {
              bool isDesktop = constraints.maxWidth > 900;
              List<Map<String, dynamic>> benefits = [
                {'icon': Icons.verified, 'title': 'Expert Care', 'description': 'BHMS qualified with years of clinical experience'},
                {'icon': Icons.favorite, 'title': 'Holistic Approach', 'description': 'Treating the whole person, not just symptoms'},
                {'icon': Icons.security, 'title': 'Safe Treatment', 'description': 'No harmful side effects or drug interactions'},
                {'icon': Icons.schedule, 'title': 'Convenient Hours', 'description': 'Flexible scheduling for your convenience'},
              ];

              if (isDesktop) {
                return GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: AppConstants.spacingLarge,
                  crossAxisSpacing: AppConstants.spacingLarge,
                  children: benefits.map((benefit) => _buildBenefitCard(benefit)).toList(),
                );
              } else {
                return Column(
                  children: benefits
                      .map(
                        (benefit) => Column(
                          children: [
                            _buildBenefitCard(benefit),
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

  Widget _buildBenefitCard(Map<String, dynamic> benefit) {
    return Card(
      elevation: AppConstants.elevationSmall,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppConstants.radiusLarge)),
      child: Padding(
        padding: EdgeInsets.all(AppConstants.spacingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(AppConstants.spacingMedium),
              decoration: BoxDecoration(color: AppColors.primaryLighter, borderRadius: BorderRadius.circular(AppConstants.radiusMedium)),
              child: Icon(benefit['icon'] as IconData, color: AppColors.primary, size: 24.sp),
            ),
            SizedBox(height: AppConstants.spacingMedium),
            Text(
              benefit['title'],
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
            ),
            SizedBox(height: AppConstants.spacingSmall),
            Text(
              benefit['description'],
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: AppColors.textSecondary, height: 1.5),
            ),
          ],
        ),
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
            'Ready to Start Your Healing Journey?',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: AppColors.textInverse),
          ),
          SizedBox(height: AppConstants.spacingLarge),
          PrimaryButton(label: 'cta_book_appointment'.tr, onPressed: () => Get.toNamed(AppRoutes.contact)),
        ],
      ),
    );
  }
}

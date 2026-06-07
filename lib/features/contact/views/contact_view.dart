import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doctor/features/contact/controllers/contact_controller.dart';
import 'package:doctor/config/theme/app_colors.dart';
import 'package:doctor/shared/constants/app_constants.dart';
import 'package:doctor/shared/widgets/custom_widgets.dart';
import 'package:doctor/shared/widgets/footer.dart';
import 'package:doctor/shared/utils/utils.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactController>(
      builder: (controller) {
        final double sw = MediaQuery.of(context).size.width;
        return Scaffold(
          appBar: CustomAppBar(title: 'contact'.tr, showLogo: false),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Hero Section
                _buildContactHero(sw),

                // Contact Methods
                _buildContactMethods(),

                // Contact Form
                _buildContactForm(controller),

                // Footer
                Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildContactHero(double sw) {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: Column(
        children: [
          Text(
            'contact_title'.tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: AppTextSizes.pageTitle(sw), fontWeight: FontWeight.w700, color: AppColors.textInverse),
          ),
          SizedBox(height: AppConstants.spacingMedium),
          Text(
            'contact_subtitle'.tr,
            style: TextStyle(fontSize: AppTextSizes.body(sw), fontWeight: FontWeight.w400, color: AppColors.textInverse.withOpacity(0.9)),
          ),
        ],
      ),
    );
  }

  Widget _buildContactMethods() {
    return Container(
      color: AppColors.background,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: Column(
        children: [
          SectionTitle(title: 'contact_methods'.tr),
          SizedBox(height: AppConstants.spacingXLarge),
          LayoutBuilder(
            builder: (context, constraints) {
              bool isDesktop = constraints.maxWidth > 900;
              int crossAxisCount = isDesktop ? 4 : (constraints.maxWidth > 600 ? 2 : 1);

              return GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: AppConstants.spacingLarge,
                crossAxisSpacing: AppConstants.spacingLarge,
                children: [
                  ContactMethodCard(
                    title: 'call_us'.tr,
                    value: AppConstants.phone,
                    icon: Icons.phone,
                    onTap: () => LaunchUtils.launchPhoneCall(phoneNumber: AppConstants.phone),
                  ),
                  ContactMethodCard(
                    title: 'email_us'.tr,
                    value: AppConstants.email,
                    icon: Icons.email,
                    onTap: () => LaunchUtils.launchEmail(email: AppConstants.email, subject: 'Appointment Inquiry', body: 'Hello Dr. Kang, I would like to book an appointment.'),
                  ),
                  ContactMethodCard(
                    title: 'whatsapp_us'.tr,
                    value: AppConstants.whatsappPhone,
                    icon: Icons.chat,
                    onTap: () =>
                        LaunchUtils.launchWhatsApp(phoneNumber: AppConstants.whatsappPhone.replaceAll('+', ''), message: 'Hello Dr. Kang, I would like to book an appointment.'),
                  ),
                  ContactMethodCard(
                    title: 'visit_us'.tr,
                    value: AppConstants.location,
                    icon: Icons.location_on,
                    onTap: () => LaunchUtils.launchMaps(location: AppConstants.mapLocation),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildContactForm(ContactController controller) {
    return Container(
      color: AppColors.surface,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.spacingLarge, vertical: AppConstants.spacingXLarge * 2),
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isDesktop = constraints.maxWidth > 900;
          return Column(
            children: [
              SectionTitle(title: 'contact_form'.tr),
              SizedBox(height: AppConstants.spacingXLarge),
              Center(
                child: SizedBox(
                  width: isDesktop ? 500 : double.infinity,
                  child: Column(
                    children: [
                      // Name Field
                      TextField(
                        controller: controller.nameController,
                        decoration: InputDecoration(
                          labelText: 'name'.tr,
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppConstants.radiusMedium)),
                        ),
                      ),
                      SizedBox(height: AppConstants.spacingMedium),

                      // Email Field
                      TextField(
                        controller: controller.emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'email'.tr,
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppConstants.radiusMedium)),
                        ),
                      ),
                      SizedBox(height: AppConstants.spacingMedium),

                      // Phone Field
                      TextField(
                        controller: controller.phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'phone'.tr,
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppConstants.radiusMedium)),
                        ),
                      ),
                      SizedBox(height: AppConstants.spacingMedium),

                      // Message Field
                      TextField(
                        controller: controller.messageController,
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: 'message'.tr,
                          prefixIcon: Icon(Icons.message),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppConstants.radiusMedium)),
                        ),
                      ),
                      SizedBox(height: AppConstants.spacingXLarge),

                      // Submit Button
                      Obx(() => PrimaryButton(label: 'send'.tr, onPressed: () => controller.submitForm(), isLoading: controller.isSubmitting.value, width: double.infinity)),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

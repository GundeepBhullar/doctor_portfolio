# Development Guide

This guide is for developers who want to extend, maintain, and improve the Dr. Kang's Homoeopathic Clinic website.

## 🎯 Development Workflow

### 1. Code Organization

Follow the established folder structure:

```
feature/
├── controllers/    # Business logic
├── views/          # UI components
└── bindings/       # Dependency injection
```

### 2. Creating a New Page

#### Step 1: Create the Controller

File: `lib/features/[feature]/controllers/[feature]_controller.dart`

```dart
import 'package:get/get.dart';

class NewFeatureController extends GetxController {
  final RxBool isLoading = false.obs;
  final RxString message = ''.obs;

  @override
  void onInit() {
    super.onInit();
    _loadData();
  }

  void _loadData() {
    isLoading.value = true;
    try {
      // Your business logic here
    } catch (e) {
      message.value = 'Error: $e';
    } finally {
      isLoading.value = false;
    }
  }
}
```

#### Step 2: Create the Binding

File: `lib/features/[feature]/bindings/[feature]_binding.dart`

```dart
import 'package:get/get.dart';
import 'package:doctor/features/[feature]/controllers/[feature]_controller.dart';

class NewFeatureBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewFeatureController>(() => NewFeatureController());
  }
}
```

#### Step 3: Create the View

File: `lib/features/[feature]/views/[feature]_view.dart`

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doctor/features/[feature]/controllers/[feature]_controller.dart';
import 'package:doctor/shared/widgets/custom_widgets.dart';
import 'package:doctor/shared/widgets/footer.dart';

class NewFeatureView extends StatelessWidget {
  const NewFeatureView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewFeatureController>(
      builder: (controller) {
        return Scaffold(
          appBar: CustomAppBar(title: 'feature'.tr),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Your UI here
                Footer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
```

#### Step 4: Add Route

Update `lib/config/routes/app_routes.dart`:

```dart
static const String newFeature = '/new-feature';

static final List<GetPage> pages = [
  // ... existing pages
  GetPage(
    name: newFeature,
    page: () => const NewFeatureView(),
    binding: NewFeatureBinding(),
    transition: Transition.fadeIn,
  ),
];
```

#### Step 5: Add Translations

Update `lib/l10n/translations.dart`:

```dart
'feature': 'Feature',
'feature_subtitle': 'Feature Subtitle',
```

### 3. State Management with GetX

#### Observable Variables

```dart
// Simple observable
final RxString name = ''.obs;

// List observable
final RxList<String> items = <String>[].obs;

// Map observable
final RxMap<String, dynamic> userData = <String, dynamic>{}.obs;

// Boolean observable
final RxBool isLoading = false.obs;
```

#### Using in UI

```dart
// GetBuilder - Updates when controller updates
GetBuilder<MyController>(
  builder: (controller) => Text(controller.name.value),
)

// Obx - Reactive updates
Obx(() => Text(controller.name.value))

// GetX - Full reactive with lifecycle
GetX<MyController>(
  builder: (controller) => Text(controller.name.value),
)
```

### 4. Creating Custom Widgets

Create reusable components in `lib/shared/widgets/`:

```dart
class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const CustomCard({
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppConstants.elevationSmall,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.radiusLarge),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(AppConstants.spacingMedium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: AppConstants.spacingSmall),
              Text(subtitle, style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
      ),
    );
  }
}
```

### 5. Adding Translations

To add support for a new language:

1. Open `lib/l10n/translations.dart`
2. Create a new language map (e.g., `static const Map<String, String> frFR = {...}`)
3. Add to `@override Map<String, Map<String, String>> get keys`

```dart
@override
Map<String, Map<String, String>> get keys => {
  'en_US': enUS,
  'hi_IN': hiIN,
  'pa_IN': paIN,
  'fr_FR': frFR,  // New language
};
```

### 6. Responsive Design

Use `LayoutBuilder` for responsive layouts:

```dart
LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth < 600) {
      return MobileLayout();
    } else if (constraints.maxWidth < 900) {
      return TabletLayout();
    } else {
      return DesktopLayout();
    }
  },
)
```

Or use the custom `ResponsiveContainer`:

```dart
ResponsiveContainer(
  mobileView: MobileView(),
  tabletView: TabletView(),
  desktopView: DesktopView(),
)
```

### 7. Error Handling

Implement proper error handling:

```dart
try {
  // Your code
  await fetchData();
} on SocketException {
  Get.snackbar('error'.tr, 'Network error');
} on TimeoutException {
  Get.snackbar('error'.tr, 'Request timeout');
} catch (e) {
  Get.snackbar('error'.tr, 'Unknown error: $e');
}
```

### 8. API Integration (When Needed)

Create a service in a new `services` folder:

```dart
// lib/features/[feature]/services/api_service.dart
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://api.example.com';

  static Future<Map<String, dynamic>> fetchData() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/endpoint'),
      ).timeout(const Duration(seconds: 30));

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      rethrow;
    }
  }
}
```

### 9. Testing

Create test files in `test/` directory:

```dart
// test/features/home/controllers/home_controller_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:doctor/features/home/controllers/home_controller.dart';

void main() {
  group('HomeController', () {
    late HomeController homeController;

    setUp(() {
      homeController = HomeController();
    });

    test('Initial state should be not loading', () {
      expect(homeController.isLoading.value, false);
    });

    test('Loading state should change on init', () async {
      homeController.onInit();
      await Future.delayed(Duration(milliseconds: 600));
      expect(homeController.isLoading.value, false);
    });
  });
}
```

Run tests:

```bash
flutter test
```

## 🎨 Design Guidelines

### Colors

- Use `AppColors` from `lib/config/theme/app_colors.dart`
- Never hardcode colors
- Maintain color consistency across the app

### Typography

- Use `AppTheme` text styles
- Always use appropriate text styles from `Theme.of(context).textTheme`

### Spacing

- Use `AppConstants` spacing values
- Maintain consistent spacing throughout

### Icons

- Use Material Icons (included by default)
- Ensure proper sizing with responsive font sizes

## 📋 Code Quality Standards

### Naming Conventions

- Classes: `PascalCase`
- Variables/functions: `camelCase`
- Constants: `camelCase` with `const` keyword
- Privates: Prefix with `_`

### File Organization

- One public class per file
- Group related functionality
- Meaningful file names

### Documentation

- Add comments for complex logic
- Use doc comments for public APIs
- Keep comments up-to-date

### Code Standards

```dart
// Good
class UserService {
  Future<User> getUser(int id) async {
    // Implementation
  }
}

// Avoid
class userService {
  getUser(id) {
    // Implementation
  }
}
```

## 🚀 Deployment

### Build for Web

```bash
flutter build web --release
```

### Build for Android

```bash
flutter build apk --release
flutter build appbundle --release
```

### Build for iOS

```bash
flutter build ipa --release
```

## 🔍 Debugging

### Enable Debug Logging

```dart
// In development
if (kDebugMode) {
  print('Debug: $message');
}
```

### GetX Debug Mode

```dart
// In main.dart
Get.put(MyController(), tag: 'debug');
```

### Use Flutter DevTools

```bash
flutter pub global activate devtools
flutter pub global run devtools
```

## 📱 Performance Tips

1. **Use const constructors** where possible
2. **Avoid unnecessary rebuilds** with Obx
3. **Use lazy loading** for images
4. **Dispose resources** properly
5. **Cache API responses**
6. **Use efficient algorithms**

## 🧹 Common Tasks

### Formatting Code

```bash
dart format lib/
```

### Analyzing Code

```bash
flutter analyze
```

### Running Tests

```bash
flutter test
```

### Cleaning Build

```bash
flutter clean
flutter pub get
```

## 📚 Resources

- [Flutter Documentation](https://flutter.dev)
- [GetX Documentation](https://github.com/jonataslaw/getx/wiki)
- [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- [Flutter Best Practices](https://flutter.dev/docs/testing/best-practices)

## 🤝 Contributing

When contributing to this project:

1. Follow the established code structure
2. Write meaningful commit messages
3. Test your changes thoroughly
4. Update documentation if needed
5. Ensure code quality standards

## 📝 Checklist for New Features

- [ ] Created controller with proper state management
- [ ] Created view with responsive design
- [ ] Created binding for dependency injection
- [ ] Added route in `app_routes.dart`
- [ ] Added translations in all languages
- [ ] Tested on mobile, tablet, and desktop
- [ ] Tested all language variations
- [ ] Added error handling
- [ ] Updated documentation
- [ ] Ran `flutter analyze`
- [ ] Tested navigation
- [ ] Verified no console errors

---

**Last Updated**: 12 May 2026

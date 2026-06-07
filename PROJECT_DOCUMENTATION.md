# Dr. Kang's Homoeopathic Clinic Website

A modern, responsive, and professional portfolio website for Dr. Kang's Homoeopathic Clinic built with Flutter, featuring multi-language support (English, Hindi, Punjabi), advanced state management with GetX, and an elegant design.

## 📱 Features

### 1. **Fully Responsive Design**

- Mobile-first approach (≤ 600px)
- Tablet optimization (600px - 900px)
- Desktop experience (≥ 900px)
- Uses `responsive_sizer` for dynamic scaling
- Adaptive layouts for all screen sizes

### 2. **Multi-Language Support**

- **English** (default)
- **Hindi** (हिंदी)
- **Punjabi** (ਪੰਜਾਬੀ)
- Easy language switching via dropdown in app bar
- Complete translation of all UI elements

### 3. **Contact Integration**

- **WhatsApp**: Direct messaging with pre-filled message
- **Email**: Send inquiries with pre-filled subject and body
- **Phone**: Direct calling functionality
- **Google Maps**: Location mapping integration
- Contact form with validation

### 4. **Modern Architecture**

- **Clean Architecture**: Separation of concerns (MVC pattern)
- **Feature-Based Structure**: Each page is a separate module
- **State Management**: GetX for efficient state handling
- **Routing**: GetX navigation for smooth page transitions
- **Theme Management**: Centralized theme and color configuration

### 5. **Beautiful UI**

- Modern gradient backgrounds
- Smooth animations and transitions
- Professional color scheme (Green and Orange)
- Clean typography with Google Fonts (Poppins)
- Card-based layouts with shadows and rounded corners
- Reusable widget components

## 📁 Project Structure

```
lib/
├── config/
│   ├── theme/
│   │   ├── app_colors.dart          # All color definitions
│   │   └── app_theme.dart           # Theme configuration
│   └── routes/
│       └── app_routes.dart          # Route definitions and pages
├── features/
│   ├── home/
│   │   ├── controllers/
│   │   │   └── home_controller.dart
│   │   ├── views/
│   │   │   └── home_view.dart
│   │   └── bindings/
│   │       └── home_binding.dart
│   ├── about/
│   │   ├── controllers/
│   │   ├── views/
│   │   └── bindings/
│   ├── services/
│   │   ├── controllers/
│   │   ├── views/
│   │   └── bindings/
│   └── contact/
│       ├── controllers/
│       ├── views/
│       └── bindings/
├── l10n/
│   └── translations.dart            # Internationalization strings
├── shared/
│   ├── widgets/
│   │   ├── custom_widgets.dart      # Reusable components
│   │   └── footer.dart              # Footer widget
│   ├── constants/
│   │   └── app_constants.dart       # Application constants
│   └── utils/
│       └── utils.dart               # Utility functions
└── main.dart                         # App entry point
```

## 🎨 Design System

### Colors

- **Primary**: Deep Green (#2D5F4F)
- **Secondary**: Warm Orange (#F5A623)
- **Background**: Off-white (#FAFBFC)
- **Text**: Dark Gray (#1F1F1F)

### Typography

- **Font**: Poppins (Google Fonts)
- **Display**: 28-48sp (bold)
- **Heading**: 20-24sp (semi-bold)
- **Body**: 12-16sp (regular/medium)
- **Label**: 10-14sp (semi-bold)

### Spacing System

- XSmall: 4px
- Small: 8px
- Medium: 16px
- Large: 24px
- XLarge: 32px

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.10.7+)
- Dart SDK

### Installation

1. **Clone the repository**

```bash
cd /Users/gundeepbhullar/Desktop/iweb/Flutter/doctor
```

2. **Get dependencies**

```bash
flutter pub get
```

3. **Run the application**

```bash
flutter run -d chrome  # For web
flutter run            # For mobile
```

## 📦 Dependencies

```yaml
- get: ^4.6.5 # State management & routing
- responsive_sizer: ^3.3.2 # Responsive design
- url_launcher: ^6.2.4 # URL launching (WhatsApp, Email, Maps)
- google_fonts: ^6.2.0 # Google Fonts integration
```

## 🗂️ Module Details

### Home Page

- Hero section with welcome message
- Doctor information display
- Services overview
- Call-to-action buttons
- Quick navigation to other sections

### About Page

- Detailed doctor profile
- Qualifications and certifications
- Professional philosophy
- Experience information

### Services Page

- Complete list of 6 services
- Service descriptions with icons
- Why choose us section
- Benefits overview

### Contact Page

- Contact form with validation
- 4 contact methods (Call, Email, WhatsApp, Maps)
- Direct integration with communication apps
- Form submission handling

## 🌐 Localization

### Adding New Translations

1. Open `lib/l10n/translations.dart`
2. Add new key-value pairs to each language map:

```dart
'key': 'English text',
'key': 'हिंदी टेक्स्ट',
'key': 'ਪੰਜਾਬੀ ਟੈਕਸਟ',
```

### Using Translations in Code

```dart
Text('key'.tr)  // Displays translated text based on current locale
```

## 🎯 State Management with GetX

### Controllers

Each feature has a controller that manages state:

```dart
class HomeController extends GetxController {
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize data
  }
}
```

### Using in Views

```dart
GetBuilder<HomeController>(
  builder: (controller) {
    return YourWidget();
  },
)
```

## 🔗 Contact Integration

### WhatsApp

```dart
LaunchUtils.launchWhatsApp(
  phoneNumber: '+916284717772',
  message: 'Hello Dr. Kang...',
);
```

### Email

```dart
LaunchUtils.launchEmail(
  email: 'sangamkang@gmail.com',
  subject: 'Inquiry',
  body: 'Message...',
);
```

### Phone Call

```dart
LaunchUtils.launchPhoneCall(
  phoneNumber: '+916284717772',
);
```

### Maps

```dart
LaunchUtils.launchMaps(
  location: 'SCO 50, First floor, Phase 11, Sector 65, Sahibzada Ajit Singh Nagar, Punjab 160062',
);
```

## 📱 Responsive Breakpoints

- **Mobile**: < 600px
- **Tablet**: 600px - 900px
- **Desktop**: ≥ 900px

Each widget adapts automatically based on screen width using `LayoutBuilder`.

## 🎨 Custom Widgets

### Available Widgets

1. **CustomAppBar**: Header with logo and language switcher
2. **PrimaryButton**: Main action button
3. **SecondaryButton**: Secondary action button
4. **SectionTitle**: Section headings with subtitle
5. **ServiceCard**: Service showcase card
6. **ContactMethodCard**: Contact method card
7. **Footer**: Application footer
8. **ResponsiveContainer**: Adaptive layout container

## 🔧 Customization

### Colors

Update `lib/config/theme/app_colors.dart`

### Fonts

Update `pubspec.yaml` fonts section

### Routes

Update `lib/config/routes/app_routes.dart`

### Contact Information

Update `lib/shared/constants/app_constants.dart`

## 📝 Best Practices Used

1. **Clean Code**: Clear naming conventions and organization
2. **DRY Principle**: Reusable components and utilities
3. **SOLID Principles**: Single responsibility, open-closed
4. **Performance**: Lazy loading, widget reuse
5. **Accessibility**: Proper contrast ratios and text sizes
6. **Responsive Design**: Mobile-first approach

## 🐛 Known Limitations & Future Enhancements

### Current

- Contact form submission is simulated (add backend integration)
- No appointment booking system (can be added)
- No testimonials section (can be added)
- No blog or news section (can be added)

### Future Enhancements

- Backend API integration for form submission
- Firebase integration for data storage
- Analytics and tracking
- Dark mode support
- Progressive Web App (PWA) features
- Push notifications

## 📄 Doctor Information

- **Name**: Dr. Sangam Kang
- **Qualification**: BHMS (Panjab University, Chandigarh)
- **Email**: sangamkang@gmail.com
- **Phone**: +91 6284717772
- **Clinic**: Dr. Kang's Homoeopathic Clinic
- **Location**: SCO 50, First floor, Phase 11, Sector 65, Sahibzada Ajit Singh Nagar, Punjab 160062

## 📞 Support & Contact

For issues, questions, or suggestions regarding the website:

- Email: sangamkang@gmail.com
- Phone: +91 6284717772
- WhatsApp: +91 6284717772

## 📄 License

This project is proprietary and belongs to Dr. Kang's Homoeopathic Clinic.

## 👨‍💻 Development

Built with ❤️ using Flutter and Dart.

---

**Last Updated**: 12 May 2026

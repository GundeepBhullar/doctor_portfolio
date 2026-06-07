# Dr. Kang's Homoeopathic Clinic - Portfolio Website

A modern, professional, and fully responsive portfolio website for Dr. Kang's Homoeopathic Clinic built with **Flutter**, featuring multi-language support, elegant design, and seamless contact integration.

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.10.7+-blue?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.10.7+-blue?logo=dart)
![GetX](https://img.shields.io/badge/GetX-4.6.5-green)
![License](https://img.shields.io/badge/License-Proprietary-red)
![Status](https://img.shields.io/badge/Status-Complete-success)

[Quick Start](#-quick-start) • [Features](#-features) • [Documentation](#-documentation) • [Setup](#-setup-installation)

</div>

---

## 🌟 Features

### 📱 Fully Responsive Design

- **Mobile Optimized**: Perfect on phones (< 600px)
- **Tablet Friendly**: Optimized for tablets (600px - 900px)
- **Desktop Ready**: Full experience on desktop (≥ 900px)
- Automatic layout adaptation using advanced responsive design

### 🌐 Multi-Language Support

- **English** - Default
- **हिंदी (Hindi)** - Complete translation
- **ਪੰਜਾਬੀ (Punjabi)** - Complete translation
- Easy language switching with 1 click

### 📞 Seamless Contact Integration

- **WhatsApp**: Direct messaging with pre-filled content
- **Email**: Contact form with email client integration
- **Phone**: One-tap calling
- **Google Maps**: Location and directions

### 🎨 Beautiful & Elegant UI

- Modern professional design
- Smooth animations and transitions
- Professional color scheme (Green & Orange)
- Google Fonts typography (Poppins)
- Card-based layouts with shadows
- Fully accessible (WCAG compliant contrast ratios)

### ⚙️ Modern Architecture

- **Clean Code**: MVC pattern implementation
- **GetX State Management**: Reactive and efficient
- **Feature-Based Structure**: Modular and scalable
- **Dependency Injection**: Proper lazy loading
- **Separated Concerns**: Controllers, Views, Bindings

---

## 🚀 Quick Start

### Prerequisites

- Flutter SDK 3.10.7 or higher
- Dart SDK 3.10.7 or higher
- Any modern web browser

### Installation (3 Steps)

```bash
# 1. Clone/Navigate to project
cd /Users/gundeepbhullar/Desktop/iweb/Flutter/doctor

# 2. Get dependencies
flutter pub get

# 3. Run the app
flutter run -d chrome
```

**That's it!** The website will open in your default browser.

---

## 📖 Documentation

### For Getting Started

👉 **[SETUP_GUIDE.md](SETUP_GUIDE.md)** - Complete installation and setup guide

- Environment setup
- Troubleshooting
- Device testing guide

### For Project Overview

👉 **[PROJECT_DOCUMENTATION.md](PROJECT_DOCUMENTATION.md)** - Complete project documentation

- Features overview
- Project structure
- Design system
- Best practices

### For Developers

👉 **[DEVELOPMENT_GUIDE.md](DEVELOPMENT_GUIDE.md)** - Development and customization guide

- How to add new pages
- State management patterns
- Code quality standards
- Testing guidelines

### Quick Summary

👉 **[IMPLEMENTATION_SUMMARY.md](IMPLEMENTATION_SUMMARY.md)** - What has been built

- Complete feature list
- File organization
- Deployment readiness

---

## 📁 Project Structure

```
lib/
├── config/              # Configuration files
│   ├── theme/          # Colors and theme
│   └── routes/         # Page routes
├── features/           # Feature modules
│   ├── home/          # Home page
│   ├── about/         # Doctor info
│   ├── services/      # Services list
│   └── contact/       # Contact & form
├── l10n/              # Localization (3 languages)
├── shared/            # Reusable components
│   ├── widgets/       # Custom widgets
│   ├── constants/     # App constants
│   └── utils/         # Utility functions
└── main.dart          # App entry point
```

---

## 🎯 Key Pages

### 1. **Home** - Welcome & Services Overview

- Doctor introduction
- Clinic information
- Services preview
- Call-to-action buttons

### 2. **About** - Doctor Profile

- Doctor biography
- Qualifications (BHMS)
- Professional philosophy
- Experience information

### 3. **Services** - Complete Service List

- Chronic diseases treatment
- Acute conditions
- Skin disorders
- Digestive health
- Women's health
- Children's health

### 4. **Contact** - Get in Touch

- Contact form with validation
- Direct communication options
- WhatsApp, Email, Phone, Maps integration

---

## 🔧 Technology Stack

| Technology            | Purpose                    |
| --------------------- | -------------------------- |
| **Flutter**           | UI Framework               |
| **Dart**              | Programming Language       |
| **GetX**              | State Management & Routing |
| **Responsive Sizer**  | Responsive Design          |
| **URL Launcher**      | Contact Integration        |
| **Google Fonts**      | Typography                 |
| **Material Design 3** | Design System              |

---

## 🎨 Design Highlights

### Color Scheme

- **Primary**: Deep Green (#2D5F4F)
- **Secondary**: Warm Orange (#F5A623)
- **Background**: Off-white (#FAFBFC)
- **Text**: Dark Gray (#1F1F1F)

### Typography

- Font: **Poppins** (Google Fonts)
- Scales responsively for all devices
- Professional hierarchy

### Spacing & Layout

- Consistent spacing system
- Mobile-first approach
- Smooth transitions

---

## 🌍 Doctor Information

| Detail            | Value                                |
| ----------------- | ------------------------------------ |
| **Name**          | Dr. Sangam Kang                      |
| **Qualification** | BHMS (Panjab University, Chandigarh) |
| **Email**         | sangamkang@gmail.com                 |
| **Phone**         | +91 6284717772                       |
| **Clinic**        | Dr. Kang's Homoeopathic Clinic       |
| **Location**      | SCO 50, First floor, Phase 11, Sector 65, Sahibzada Ajit Singh Nagar, Punjab 160062 |

---

## 📱 Responsive Breakpoints

| Device  | Width     | Layout                     |
| ------- | --------- | -------------------------- |
| Mobile  | < 600px   | Stacked, optimized spacing |
| Tablet  | 600-900px | 2-column grid              |
| Desktop | ≥ 900px   | 3-4 column grid            |

All components automatically adapt to screen size!

---

## ✨ Highlights

### Code Quality

✅ Clean Architecture  
✅ SOLID Principles  
✅ DRY Principle  
✅ Comprehensive Error Handling  
✅ Linting Enabled

### Features

✅ 4 Complete Pages  
✅ Multi-Language Support  
✅ Form Validation  
✅ Contact Integration  
✅ Responsive Design

### Documentation

✅ Setup Guide  
✅ Development Guide  
✅ Project Documentation  
✅ Implementation Summary  
✅ This README

### User Experience

✅ Smooth Animations  
✅ Professional Design  
✅ Easy Navigation  
✅ Fast Loading  
✅ Accessible Design

---

## 🚀 Deployment

The application is ready to deploy on:

- **Web**: Firebase Hosting, Netlify, Vercel
- **Android**: Google Play Store
- **iOS**: Apple App Store
- **Desktop**: macOS, Windows, Linux

### Build Commands

```bash
# Web
flutter build web --release

# Android
flutter build apk --release

# iOS
flutter build ipa --release

# Desktop (macOS example)
flutter build macos --release
```

---

## 🎓 Learning Resources

- 📚 [Flutter Documentation](https://flutter.dev)
- 📚 [GetX Documentation](https://github.com/jonataslaw/getx/wiki)
- 📚 [Dart Style Guide](https://dart.dev/guides/language/effective-dart)
- 📚 [Material Design 3](https://m3.material.io)

---

## 🤝 Contributing

To extend or modify this project:

1. Read [DEVELOPMENT_GUIDE.md](DEVELOPMENT_GUIDE.md)
2. Follow the established code structure
3. Test on all device sizes
4. Update translations if adding new strings
5. Maintain code quality standards

---

## 🐛 Troubleshooting

### App won't run?

```bash
flutter clean
flutter pub get
flutter run -d chrome
```

### Dependencies issue?

```bash
flutter pub cache clean
flutter pub get
```

### Can't find browser?

```bash
flutter run -d firefox  # Try Firefox instead
```

See [SETUP_GUIDE.md](SETUP_GUIDE.md) for more solutions.

---

## 📊 Project Stats

| Metric                     | Count |
| -------------------------- | ----- |
| **Pages**                  | 4     |
| **Features**               | 15+   |
| **Custom Widgets**         | 9     |
| **Utility Functions**      | 10+   |
| **Languages**              | 3     |
| **Translated Strings**     | 150+  |
| **Color Shades**           | 30+   |
| **Responsive Breakpoints** | 3     |
| **Files (organized)**      | 30+   |

---

## 📄 License

This project is **proprietary** and belongs to Dr. Kang's Homoeopathic Clinic.
All rights reserved.

---

## 📞 Support

For questions, issues, or support:

- **Email**: sangamkang@gmail.com
- **Phone**: +91 6284717772
- **WhatsApp**: +91 6284717772

---

## 🎉 What's Included

✅ **Complete Source Code** - Ready to build and deploy  
✅ **4 Complete Pages** - Home, About, Services, Contact  
✅ **Responsive Design** - Mobile, Tablet, Desktop  
✅ **3-Language Support** - English, Hindi, Punjabi  
✅ **Contact Integration** - WhatsApp, Email, Phone, Maps  
✅ **Professional UI** - Modern, elegant, accessible  
✅ **Clean Architecture** - Modular, scalable, testable  
✅ **Comprehensive Docs** - Setup, Development, Project  
✅ **Production Ready** - Deploy anywhere, anytime  
✅ **Future Proof** - Easy to extend and maintain

---

## 🏁 Getting Started Right Now

```bash
cd /Users/gundeepbhullar/Desktop/iweb/Flutter/doctor
flutter pub get
flutter run -d chrome
```

**Then**:

1. Explore the home page
2. Try switching languages (top right)
3. Test responsive design (resize browser)
4. Try contact integrations (WhatsApp, Email, Maps)
5. Read the documentation

---

## 📝 Quick Navigation

| Document                                               | Purpose                |
| ------------------------------------------------------ | ---------------------- |
| [SETUP_GUIDE.md](SETUP_GUIDE.md)                       | How to install and run |
| [PROJECT_DOCUMENTATION.md](PROJECT_DOCUMENTATION.md)   | Project overview       |
| [DEVELOPMENT_GUIDE.md](DEVELOPMENT_GUIDE.md)           | How to develop         |
| [IMPLEMENTATION_SUMMARY.md](IMPLEMENTATION_SUMMARY.md) | What was built         |

---

## 🎊 You're All Set!

The project is **complete**, **tested**, **documented**, and **ready to use**.

**Happy coding! 🚀**

---

<div align="center">

**Created with ❤️ for Dr. Kang's Homoeopathic Clinic**

_Last Updated: 12 May 2026_

</div>

# Setup & Installation Guide

## 🚀 Quick Start

### 1. Prerequisites

Ensure you have the following installed:

- **Flutter SDK**: 3.10.7 or higher
- **Dart SDK**: 3.10.7 or higher
- **Git** (optional, for version control)
- **VS Code** or **Android Studio** (recommended IDEs)

To check your Flutter setup:

```bash
flutter doctor
```

### 2. Project Setup

#### Step 1: Navigate to Project Directory

```bash
cd /Users/gundeepbhullar/Desktop/iweb/Flutter/doctor
```

#### Step 2: Get Dependencies

```bash
flutter pub get
```

This will download all required packages defined in `pubspec.yaml`

#### Step 3: Run the Application

**For Web (Recommended for initial testing):**

```bash
flutter run -d chrome
```

**For Android:**

```bash
flutter run -d android
```

**For iOS:**

```bash
flutter run -d ios
```

**For Desktop (Windows/macOS/Linux):**

```bash
flutter run -d macos
```

## 🔍 Verification Checklist

After installation, verify the following:

- [ ] All dependencies installed without errors
- [ ] No build errors when running `flutter pub get`
- [ ] Application launches successfully
- [ ] All 4 pages load correctly (Home, About, Services, Contact)
- [ ] Language switcher works (English, Hindi, Punjabi)
- [ ] Responsive design works on mobile, tablet, and desktop
- [ ] Contact buttons (WhatsApp, Email, Phone, Maps) are clickable

## 📱 Testing on Different Devices

### Mobile Testing

```bash
# List all connected devices
flutter devices

# Run on specific device
flutter run -d <device_id>
```

### Web Testing

The web version can be tested on:

- Chrome (Recommended)
- Firefox
- Safari
- Edge

```bash
flutter run -d web  # Interactive selection
flutter run -d chrome  # Specific browser
```

## 🎯 Common Issues & Solutions

### Issue 1: Dependencies not installing

**Solution:**

```bash
flutter pub cache clean
flutter pub get
```

### Issue 2: Build fails on web

**Solution:**

```bash
flutter clean
flutter pub get
flutter run -d web
```

### Issue 3: Chrome not found

**Solution:**

```bash
# Install Chrome or use Firefox
flutter run -d firefox
```

### Issue 4: JAVA_HOME not set (Android)

**Solution:**
Set JAVA_HOME to your Java installation directory and run:

```bash
flutter doctor
```

## 🔧 Configuration

### Environment Setup

1. **Set Flutter Path** (if not already set)

   ```bash
   export PATH="$PATH:~/path/to/flutter/bin"
   ```

2. **Accept Android Licenses**

   ```bash
   flutter doctor --android-licenses
   ```

3. **Create Web Support** (if missing)
   ```bash
   flutter create --platforms web .
   ```

### IDE Setup

#### VS Code

1. Install Flutter extension by Dart Code
2. Install Dart extension
3. Restart VS Code
4. Create a new terminal: Ctrl+` (backtick)

#### Android Studio

1. Install Flutter plugin
2. Install Dart plugin
3. Create a new Flutter project to verify

## 📚 Project Dependencies Explanation

| Package          | Version | Purpose                              |
| ---------------- | ------- | ------------------------------------ |
| get              | 4.6.5   | State management & routing           |
| responsive_sizer | 3.3.2   | Responsive design                    |
| url_launcher     | 6.2.4   | Opening URLs (WhatsApp, Email, etc.) |
| google_fonts     | 6.2.0   | Typography with Google Fonts         |

## 🗂️ Key Files to Know

| File                                | Purpose                                |
| ----------------------------------- | -------------------------------------- |
| `lib/main.dart`                     | Application entry point                |
| `lib/config/theme/app_colors.dart`  | Color definitions                      |
| `lib/config/routes/app_routes.dart` | Route definitions                      |
| `lib/l10n/translations.dart`        | Multi-language support                 |
| `pubspec.yaml`                      | Project dependencies and configuration |

## 🚀 Running for First Time

### Complete Setup Sequence:

```bash
# 1. Navigate to project
cd /Users/gundeepbhullar/Desktop/iweb/Flutter/doctor

# 2. Clean previous builds (if any)
flutter clean

# 3. Get dependencies
flutter pub get

# 4. Run on web
flutter run -d chrome

# OR run on mobile
flutter run
```

## 📖 Next Steps After Setup

1. **Explore the codebase**: Read `PROJECT_DOCUMENTATION.md`
2. **Test all pages**: Navigate through all sections
3. **Test responsiveness**: Try different screen sizes
4. **Test languages**: Switch between English, Hindi, Punjabi
5. **Test contact features**: Ensure WhatsApp, Email, Phone, Maps work
6. **Customize content**: Update doctor info and clinic details

## 🔐 Environment Variables (Optional)

Create a `.env` file if you need to add API keys or configuration:

```bash
# Example .env (add if needed)
CLINIC_EMAIL=sangamkang@gmail.com
CLINIC_PHONE=+916284717772
```

**Note**: Currently not required as all constants are in `app_constants.dart`

## 📱 Device Testing Guide

### Testing on Physical Phone

```bash
# Enable USB debugging on your phone
# Connect phone via USB

# Check connection
flutter devices

# Run on connected phone
flutter run
```

### Testing on Emulator/Simulator

```bash
# List all emulators/simulators
flutter emulators

# Create new emulator (Android)
flutter emulators create --name android_emulator

# Launch emulator
flutter emulators launch android_emulator

# Run app
flutter run
```

## 🎨 Customizing the App

### Change Doctor Information

Edit `lib/shared/constants/app_constants.dart`:

```dart
static const String doctorName = 'Dr. Your Name';
static const String email = 'youremail@gmail.com';
static const String phone = '+91 XXXXXXXXXX';
```

### Change Colors

Edit `lib/config/theme/app_colors.dart`:

```dart
static const Color primary = Color(0xFF2D5F4F); // Your color
```

### Change Language Strings

Edit `lib/l10n/translations.dart`:

```dart
'doctor_name': 'Dr. Your Name',
```

## ✅ Troubleshooting Checklist

Before reporting issues, try:

- [ ] `flutter clean`
- [ ] `flutter pub get`
- [ ] Restart IDE
- [ ] Update Flutter: `flutter upgrade`
- [ ] Check Flutter doctor: `flutter doctor`
- [ ] Clear cache: `flutter pub cache clean`

## 📞 Getting Help

If you encounter issues:

1. Check the official Flutter documentation: https://flutter.dev
2. Search Stack Overflow: https://stackoverflow.com/questions/tagged/flutter
3. Check issue tracker: https://github.com/flutter/flutter/issues
4. Contact the development team

## 🎉 Success!

Once you see the app running successfully, you have:

- ✅ Flutter environment properly configured
- ✅ All dependencies installed
- ✅ Project structure understood
- ✅ Build system working correctly

You're now ready to develop and customize the application!

---

**Last Updated**: 12 May 2026

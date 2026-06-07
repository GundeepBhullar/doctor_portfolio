# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

A Flutter app for **Dr. Kang's Homoeopathic Clinic** — a multi-page informational app with responsive layout, tri-lingual support (English, Hindi, Punjabi), and deep-link actions (WhatsApp, phone, email, maps).

## Commands

```bash
# Install dependencies
flutter pub get

# Run the app (web is the primary target)
flutter run -d chrome

# Run on a specific device
flutter run -d <device-id>   # use `flutter devices` to list

# Analyze for lint errors
flutter analyze

# Run tests
flutter test

# Run a single test file
flutter test test/widget_test.dart

# Build for web
flutter build web

# Build for Android
flutter build apk
```

## Architecture

### Feature structure (GetX MVC)

Each screen lives under `lib/features/<feature>/` with three layers:

```
bindings/   ← GetX dependency injection (lazyPut controller)
controllers/ ← GetxController: state (RxBool, etc.) + business logic
views/       ← StatelessWidget that reads controller via Get.find()
```

Routes are declared in `lib/config/routes/app_routes.dart` — each `GetPage` wires a view to its binding. Navigation uses `Get.offAndToNamed()` (replacing stack) for top-level pages.

### Shared layer

- `lib/shared/constants/app_constants.dart` — single source of truth for spacing, border radius, elevation, font sizes, and all clinic contact data. **All hardcoded values must go here.**
- `lib/shared/utils/utils.dart` — `LaunchUtils` (WhatsApp/email/phone/maps deep links), `ResponsiveUtils` (breakpoint helpers + `getResponsiveValue<T>`), and `AppTextSizes` (responsive font sizes — see below).
- `lib/shared/widgets/custom_widgets.dart` — reusable UI: `CustomAppBar`, `PrimaryButton`, `SecondaryButton`, `ResponsiveContainer`, `SectionTitle`, `ServiceCard`, `ContactMethodCard`, `LanguageSwitcher`.
- `lib/shared/widgets/footer.dart` — `Footer` widget, included at the bottom of every view.

### Responsive design

Breakpoints (from `ResponsiveUtils`):
- Mobile: `< 600px`
- Tablet: `600–900px`
- Desktop: `≥ 900px`

Use `ResponsiveUtils.getResponsiveValue<T>()` or `ResponsiveContainer` for layout branching. All font sizes use `AppConstants.fontSizeXX.sp` — the `.sp` extension comes from `responsive_sizer` and scales relative to screen size.

### Localisation (GetX Translations)

All visible strings are translation keys resolved with `'key'.tr`. Keys and their translations for all three locales live in `lib/l10n/translations.dart`. **Never hardcode user-visible text in widgets — always add a key to all three locale maps.**

### Theme / colors

- `lib/config/theme/app_colors.dart` — all color constants (`AppColors.*`).
- `lib/config/theme/app_theme.dart` — Material 3 `ThemeData` using Poppins via `google_fonts`. No local font files; fonts load from the package at runtime.

## Key dependencies

| Package | Purpose |
|---|---|
| `get` | State management, routing, i18n |
| `responsive_sizer` | `.sp`/`.h`/`.w` responsive units |
| `google_fonts` | Poppins font |
| `url_launcher` | External app deep links |
| `gap` | Spacing widget (`Gap(n.w)`) |

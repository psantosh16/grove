# Custom Color Scheme Usage Guide

This guide explains how to use the custom color scheme in your Flutter app that allows you to access colors using `context.colorScheme.scaffoldLight` and other custom colors.

## Setup

The color system has been set up with the following files:

- `lib/components/theme/app_color.dart` - Contains all color definitions
- `lib/components/theme/custom_color_scheme.dart` - Theme extension for custom colors
- `lib/components/theme/theme_extensions.dart` - BuildContext extension for easy access
- `lib/components/theme/app_theme.dart` - Main theme configuration
- `lib/components/theme/example_usage.dart` - Usage examples

## Available Colors

You can access the following custom colors using `context.colorScheme`:

- `context.colorScheme.scaffoldLight` - Light scaffold background color (#F2F2F2)
- `context.colorScheme.oneGrey` - Primary grey color (#D8D8D8)
- `context.colorScheme.twoGrey` - Secondary grey color (#CDCDCD)
- `context.colorScheme.oneWhite` - White color (#FFFFFF)
- `context.colorScheme.textDark` - Dark text color (#090909)
- `context.colorScheme.accentGreen` - Green accent color (#01BD4D)
- `context.colorScheme.accentOrange` - Orange accent color (#FE8E10)
- `context.colorScheme.accentLightBlue` - Light blue accent color (#F0F3F8)

## Usage Examples

### Basic Usage

```dart
import 'package:flutter/material.dart';
import 'package:grove/components/theme/theme_extensions.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.scaffoldLight,
      body: Container(
        color: context.colorScheme.oneWhite,
        child: Text(
          'Hello World',
          style: TextStyle(
            color: context.colorScheme.textDark,
          ),
        ),
      ),
    );
  }
}
```

### Using in Decorations

```dart
Container(
  decoration: BoxDecoration(
    color: context.colorScheme.oneWhite,
    border: Border.all(color: context.colorScheme.oneGrey),
    borderRadius: BorderRadius.circular(8),
  ),
  child: YourWidget(),
)
```

### Using in Buttons

```dart
ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor: context.colorScheme.accentGreen,
    foregroundColor: Colors.white,
  ),
  child: Text('Button'),
)
```

## Dark Mode Support

The system automatically supports dark mode. Dark theme colors are defined in `CustomColorScheme.dark` and will be used automatically when the system is in dark mode.

## Adding New Colors

To add new colors:

1. Add the color to `AppColor` class in `app_color.dart`
2. Add the property to `CustomColorScheme` class
3. Update the `light` and `dark` static instances
4. Update the `copyWith` and `lerp` methods

## Important Notes

- Always import `package:grove/components/theme/theme_extensions.dart` when using `context.colorScheme`
- The color system works with both light and dark themes
- Colors automatically interpolate during theme transitions
- The system is type-safe and will throw an error if the theme extension is not properly configured

## Migration from Old Color System

If you were previously using colors from `AppColor` directly, you can now use:

```dart
// Old way
color: AppColor.scaffoldLight

// New way (recommended)
color: context.colorScheme.scaffoldLight
```

The new way provides better theme support and automatic dark mode handling.

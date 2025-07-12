import 'package:flutter/material.dart';
import 'package:grove/components/theme/theme_extensions.dart';

/// Example widget showing how to use the custom color scheme
class ExampleUsage extends StatelessWidget {
  const ExampleUsage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Using the custom scaffoldLight color
      backgroundColor: context.colorScheme.scaffoldLight,
      appBar: AppBar(
        title: const Text('Color Scheme Example'),
        backgroundColor: context.colorScheme.accentGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Example of using different custom colors
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.colorScheme.oneWhite,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: context.colorScheme.oneGrey),
              ),
              child: Text(
                'This container uses oneWhite background with oneGrey border',
                style: TextStyle(
                  color: context.colorScheme.textDark,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.colorScheme.accentLightBlue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'This container uses accentLightBlue background',
                style: TextStyle(
                  color: context.colorScheme.textDark,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: context.colorScheme.accentGreen,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Green Accent',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: context.colorScheme.accentOrange,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Orange Accent',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.colorScheme.twoGrey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'This uses twoGrey background',
                style: TextStyle(
                  color: context.colorScheme.textDark,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Usage examples in different scenarios
class ColorUsageExamples {
  /// Example of using colors in a method
  static Color getBackgroundColor(BuildContext context) {
    return context.colorScheme.scaffoldLight;
  }

  /// Example of using colors in a widget builder
  static Widget buildCard(BuildContext context, String title, String content) {
    return Card(
      color: context.colorScheme.oneWhite,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: context.colorScheme.textDark,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: TextStyle(
                fontSize: 14,
                color: context.colorScheme.textDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

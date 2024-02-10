import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_adaptive_app.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const ResponsiveAdaptiveApp(),
    ),
  );
}

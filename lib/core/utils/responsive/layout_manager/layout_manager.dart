import 'package:bus_rapid_transit/core/utils/responsive/enums/type_devices.dart';
import 'package:bus_rapid_transit/core/utils/responsive/functions/device_type_helper.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    switch (getDeviceType(context)) {
      case TypeDevices.mobile:
        return mobile;
      case TypeDevices.tablet:
        return tablet;
      case TypeDevices.desktop:
        return desktop;
    }
  }
}

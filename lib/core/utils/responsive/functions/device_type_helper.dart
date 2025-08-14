import 'package:bus_rapid_transit/core/utils/responsive/enums/type_devices.dart';
import 'package:bus_rapid_transit/core/utils/responsive/functions/breakpoints.dart';
import 'package:flutter/material.dart';

TypeDevices getDeviceType(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  if (width >= Breakpoints.tabletBreakpoint) {
    return TypeDevices.desktop;
  } else if (width >= Breakpoints.mobileBreakpoint) {
    return TypeDevices.tablet;
  } else {
    return TypeDevices.mobile;
  }
}

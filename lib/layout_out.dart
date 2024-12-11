import 'package:flutter/material.dart';

class DeviceLayoutBuilder extends StatelessWidget {
  final Widget webLayout;
  final Widget phoneLayout;

  const DeviceLayoutBuilder(
      {super.key, required this.webLayout, required this.phoneLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return webLayout;
        }
        return phoneLayout;
      },
    );
  }
}

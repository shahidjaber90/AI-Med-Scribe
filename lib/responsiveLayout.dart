import 'package:ai_med_scribble/screens/dashboard/desktop.dart';
import 'package:ai_med_scribble/screens/dashboard/layout.dart';
import 'package:ai_med_scribble/screens/Mobile%20Size/mobile.dart';
import 'package:ai_med_scribble/screens/dashboard/tablet.creen.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout({super.key});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 225, 225),
      body: Layout(
        mobileBody: const MobileLayout(),
        tabletBody: const TabletLayout(),
        desktopBody: const DesktopLayout(),
      ),
    );
  }
}

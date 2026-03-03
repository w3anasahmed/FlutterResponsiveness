import 'package:flutter/material.dart';
import 'package:flutter_responsiveness/responsive/desktop_scaffold.dart';
import 'package:flutter_responsiveness/responsive/mobile_scaffold.dart';
import 'package:flutter_responsiveness/responsive/responsive_layout.dart';
import 'package:flutter_responsiveness/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}

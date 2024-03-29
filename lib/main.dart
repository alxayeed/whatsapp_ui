import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants/colors.dart';
import 'package:whatsapp_ui/responsive/responsive_layout_builder.dart';
import 'package:whatsapp_ui/screens/mobile_screen_layout.dart';
import 'package:whatsapp_ui/screens/web_screen_layout.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayoutBuilder(
        mobileLayout: MobileScreenLayout(),
        webLayout: WebScreenLayout(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_social_media_clone_app/AppUtils/const.dart';
import 'package:flutter_social_media_clone_app/AppUtils/theme_config.dart';
import 'package:flutter_social_media_clone_app/Presentation/screens/auth/login.dart';

import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: themeData(ThemeConfig.lightTheme),
      darkTheme: themeData(ThemeConfig.darkTheme),
      home: Login(),
    );
  }

  ThemeData themeData(ThemeData theme) {
    return theme.copyWith(
      textTheme: GoogleFonts.notoSansCyproMinoanTextTheme(
        theme.textTheme,
      ),
    );
  }
}

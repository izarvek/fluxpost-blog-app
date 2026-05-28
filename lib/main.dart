import 'package:flutter/material.dart';
import 'package:fluxpost/core/theme/theme.dart';
import 'package:fluxpost/features/auth/presentation/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FluxPost',
      theme: AppTheme.darkThemeMode,
      home:const SignUpPage()
    );
  }
}

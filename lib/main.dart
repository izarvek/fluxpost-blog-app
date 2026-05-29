import 'package:flutter/material.dart';
import 'package:fluxpost/core/secrets/app_secrets.dart';
import 'package:fluxpost/core/theme/theme.dart';
import 'package:fluxpost/features/auth/presentation/pages/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:fluxpost/features/auth/presentation/pages/signup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseAnonKey,
  );
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
      home: const LoginPage(),
    );
  }
}

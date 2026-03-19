import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Import Core
import 'package:week4/core/constants/constants.dart';
import 'package:week4/core/theme/theme.dart';

// Import Features
import 'package:week4/feature/dashboard/presentation/pages/dashboard_page.dart';
import 'package:week4/feature/mahasiswa/presentation/pages/mahasiswa_page.dart';
import 'package:week4/feature/mahasiswa_aktif/presentation/pages/mahasiswa_aktif_page.dart';
import 'package:week4/feature/dosen/presentation/pages/dosen_page.dart';
import 'package:week4/feature/profile/presentation/pages/profile_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,

      //home: const DashboardPage(),
      //home: const MahasiswaPage(),
      //home: const MahasiswaAktifPage(),
      home: const DosenPage(),
      //home: const ProfilePage(),
    );
  }
}
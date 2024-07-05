import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:on_time/core/utils/constants/locale_keys.g.dart';
import 'package:on_time/core/utils/constants/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamed(context, Routes.home);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF2A2A2E),
              Color(0xFF1F1338),
              Color(0xFF000000),
            ],
          ),
        ),
        child: Center(
          child: Text(
            LocaleKeys.onTime.tr(),
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

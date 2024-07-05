import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_time/ui/themes/app_colors.dart';
import '../../../../core/utils/constants/locale_keys.g.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              AppColors.darkCharcoal,
              AppColors.deepIndigo,
              AppColors.black,
            ],
          ),
        ),
        child: Center(
          child: Text(
            LocaleKeys.onTime.tr(),
            style:  TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

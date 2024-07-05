import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_time/core/utils/constants/routes.dart';
import 'package:on_time/ui/routes/app_routers.dart';
import '../splash/splash_screen.dart';


class TodoApp extends StatelessWidget {
  const TodoApp({super.key, required this.appRouter });

 final AppRouter appRouter ;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          debugShowCheckedModeBanner: false,

          onGenerateRoute: appRouter.onGenerateRoutes ,
          initialRoute: Routes.splash ,
        );
      },
    );
  }
}

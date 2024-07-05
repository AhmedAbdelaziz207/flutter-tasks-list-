import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:on_time/ui/routes/app_routers.dart';
import 'package:on_time/ui/views/screens/app/todo_app.dart';

import 'core/utils/constants/app_assets.dart';

/*
/// to generate keys file 
 flutter pub run easy_localization:generate -S assets/translations  -f keys -O lib/utils/constants -o locale_keys.g.dart

 */
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  AppRouter appRouter = AppRouter();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale("en"),
        Locale("ar"),
      ],
      fallbackLocale: const Locale("en"),
      path: AppAssets.translationsPath,
      child: TodoApp(
        appRouter: appRouter,
      ),
    ),
  );
}

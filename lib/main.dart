import 'package:flutter/material.dart';
import 'package:parkingclic/shared/di/app_module.dart';
import 'package:parkingclic/shared/router/app_router.dart';
import 'package:parkingclic/shared/service/push_notification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PushNotificationService.initializeApp();
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}

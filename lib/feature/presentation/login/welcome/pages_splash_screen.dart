import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parkingclic/shared/constant/color.dart';
import 'package:parkingclic/shared/router/app_router.dart';

@RoutePage()
class PagesSplashScreen extends StatefulWidget {
  const PagesSplashScreen({super.key});

  @override
  State<PagesSplashScreen> createState() => _PagesSplashScreen();
}

class _PagesSplashScreen extends State<PagesSplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    changeScreen();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  Future<void> changeScreen() async {
    Future.delayed(const Duration(seconds: 3), () {
      AutoRouter.of(context).replace(const RoutesSkipRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [AppColors.green, AppColors.green],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset("images/parking2.png")],
          ),
        ),
      ),
    );
  }
}

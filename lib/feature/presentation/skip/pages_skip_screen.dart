import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:parkingclic/shared/constant/color.dart';
import 'package:parkingclic/shared/router/app_router.dart';

@RoutePage()
class PagesSkipScreen extends StatelessWidget {
  const PagesSkipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8, 40, 8, 24),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Welcome!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: AppColors.green,
                      height: 1.2),
                ),
                const SizedBox(height: 10),
                Expanded(
                    child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 124,
                        height: 124,
                        child: Image.asset(
                          'images/header_parking.png',
                          width: 124,
                          height: 124,
                        ),
                      ),
                      const Text(
                        "Parking Clic",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 42,
                          color: AppColors.green,
                        ),
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //_buttonRegister(context),
                    const SizedBox(height: 20),
                    _buttonLogin(context)
                  ],
                ))
              ],
            ),
            //_body(context, size)
          ),
        ),
      ),
    );
  }

  Widget _buttonRegister(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: OutlinedButton(
        onPressed: () {
          AutoRouter.of(context).replace(const RoutesRegisterRoute());
        },
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 1, color: AppColors.green),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: const Text(
          'Registrar',
          style: TextStyle(color: AppColors.green),
        ),
      ),
    );
  }

  Widget _buttonLogin(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: ElevatedButton(
        onPressed: () {
          AutoRouter.of(context).replace(RoutesLoginRoute());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // <-- Radius
          ),
        ),
        child: const Text(
          "Iniciar Sesión",
          style: TextStyle(color: AppColors.white),
        ),
      ),
    );
  }

  Widget _body(BuildContext context, Size size) {
    return Positioned(
      top: size.height * 0.6,
      left: 0,
      right: 0,
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Container(
                height: size.height * 0.08,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red.withOpacity(0.9),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.05),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, -1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    children: [
                      Container(
                        height: size.height * 0.08,
                        width: size.width / 2.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.pink,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          AutoRouter.of(context)
                              .replace(RoutesLoginRoute());
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.lime,
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:parkingclic/shared/router/app_router.dart';

@RoutePage()
class PagesLoginScreen extends StatelessWidget {
  const PagesLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color(0xffF4EEF2),
              Color(0xffF4EEF2),
              Color(0xffE3EDF5),
            ],
          ),
        ),
        child: SafeArea(
            child: ListView(
          children: [
            SizedBox(height: size.height * 0.03),
            _header(),
            const SizedBox(height: 15),
            SizedBox(height: size.height * 0.04),
            myTextField("Enter username", Colors.white, null),
            myTextField("Password", Colors.black26, null),
            const SizedBox(height: 10),
            _re(),
            SizedBox(height: size.height * 0.04),
            _bottom(size, context, null, null)
          ],
        )),
      ),
    );
  }

  Widget _header() {
    return const Text(
      "Iniciar Sesión!",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 37,
        color: Colors.black,
      ),
    );
  }

  Widget _recoveryPassword() {
    return const Align(
      alignment: Alignment.centerRight,
      child: Text(
        "Recovery Password",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.greenAccent,
        ),
      ),
    );
  }

  Widget _re() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
              child: const Text(
                "Recovery Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              onTap: () {}),
        ],
      ),
    );
  }

  Widget _bottom(Size size, BuildContext context,
      TextEditingController? usuario, TextEditingController? passw) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          _buttonSignIn(size, context, usuario, passw),
          SizedBox(height: size.height * 0.06),
          // _lineOrContinue(size),
          // SizedBox(height: size.height * 0.06),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     socialIcon("images/google.png"),
          //     socialIcon("images/apple.png"),
          //     socialIcon("images/facebook.png"),
          //   ],
          // ),
          // SizedBox(height: size.height * 0.07),
          // _registerNow(),
        ],
      ),
    );
  }

  Widget _buttonSignIn(Size size, BuildContext context,
      TextEditingController? usuario, TextEditingController? passw) {
    return InkWell(
        child: Container(
          width: size.width,
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Center(
            child: Text(
              "Sign In",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
        ),
        onTap: () {
          // if (usuario.text == "andy" && passw.text == "andy") {
          //   AutoRouter.of(context).replace(const RoutesParkingHomeRoute());
          // }
        });
  }

  Widget _lineOrContinue(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2,
          width: size.width * 0.2,
          color: Colors.black12,
        ),
        const Text(
          "  Or continue with   ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
            fontSize: 16,
          ),
        ),
        Container(
          height: 2,
          width: size.width * 0.2,
          color: Colors.black12,
        ),
      ],
    );
  }

  Widget _registerNow() {
    return const Text.rich(
      TextSpan(
          text: "Not a member? ",
          style: TextStyle(
            color: Colors.lightBlue,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          children: [
            TextSpan(
              text: "Register now",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
    );
  }

  Container socialIcon(image) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Image.asset(
        image,
        height: 35,
      ),
    );
  }

  Widget myTextField(
      String hint, Color color, TextEditingController? controllerEditing) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: TextField(
        //controller: controllerEditing,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 22,
            ),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 19,
            ),
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
              color: color,
            )),
      ),
    );
  }
}

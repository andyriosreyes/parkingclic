import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:parkingclic/feature/presentation/widget/tz_button.dart';
import 'package:parkingclic/feature/presentation/widget/tz_text.dart';
import 'package:parkingclic/feature/presentation/widget/w_text_form_field.dart';
import 'package:parkingclic/shared/constant/text_styles.dart';

@RoutePage()
class PagesRegisterScreen extends StatelessWidget {
  const PagesRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(body: Container(child: _body()));
  }

  Widget _body() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SafeArea(
          child: ListView(
        children: [
          TzText("Bienvenido", style: AppTextStyles.bigTitle),
          TzText("tell_us_about_yourself", style: AppTextStyles.body),
          const SizedBox(height: 20),
          Form(
            //key: controller.formKeyFirstStep,
            child: Column(
              children: [
                WTextFormField(
                  hintText: 'Ej. Jhon Doe',
                  labelText: 'name_and_surname',
                  //controller: controller.completeNameController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'required_field';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                //email
                WTextFormField(
                  hintText: 'Ej. jhondoe@travelezee.com',
                  labelText: 'email',
                  //controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'required_field';
                    }
                    // if (!val.isEmail) {
                    //   return 'invalid_email';
                    // }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                //password
                WTextFormField(
                  hintText: '********',
                  labelText: 'password',
                  obscureText: true,
                  //controller: controller.passwordController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'required_field';
                    }
                    if (val.length < 6) {
                      return 'password_length';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          TzButton(onPressed: () {}, text: 'continue'.toUpperCase()),
          const SizedBox(height: 15),
        ],
      )),
    );
  }
}

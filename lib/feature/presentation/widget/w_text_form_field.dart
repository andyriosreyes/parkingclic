import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parkingclic/shared/constant/color.dart';

class TextScaleFactorOverride extends StatelessWidget {
  final double scale;
  final Widget child;

  const TextScaleFactorOverride(
      {super.key, required this.scale, required this.child});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data:
          MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale)),
      child: child,
    );
  }
}

// ignore: must_be_immutable
class WTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final int? minLines;
  final bool? noLabel;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final bool readOnly;
  final bool isInputTextBox;
  final int? maxLength;
  void Function(String?)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final Color errorColor;
  final IconData? iconData;

  WTextFormField(
      {super.key,
      this.controller,
      this.hintText,
      this.labelText,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      this.isInputTextBox = false,
      this.validator,
      this.minLines,
      this.noLabel,
      this.focusNode,
      this.keyboardType,
      this.readOnly = false,
      this.onChanged,
      this.maxLength,
      this.inputFormatters,
      this.errorColor = AppColors.red,
      this.iconData});

  @override
  Widget build(BuildContext context) {
    return TextScaleFactorOverride(
      scale: 1.0,
      child: TextFormField(
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
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 19,
            )),
        inputFormatters: inputFormatters,
      ),
    );
  }
}

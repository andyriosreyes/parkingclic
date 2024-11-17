import 'package:flutter/material.dart';
import 'package:parkingclic/feature/presentation/widget/tz_text.dart';
import 'package:parkingclic/shared/constant/color.dart';
import 'package:parkingclic/shared/constant/text_styles.dart';

// ignore: must_be_immutable
class TzButton extends StatefulWidget {
  final String text;
  final Widget? widgetLabel;
  final double? sizeText;
  final Function() onPressed;
  final double? width;
  final double? height;
  final Widget? icon;
  final Color? color;
  final Color? textColor;
  final FontWeight? fontWeight;
  bool active;

  TzButton({
    Key? key,
    this.text = "",
    this.widgetLabel,
    this.sizeText,
    required this.onPressed,
    this.width,
    this.height = 48,
    this.icon,
    this.active = true,
    this.color,
    this.textColor,
    this.fontWeight = FontWeight.w700,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StateTzButton();
}

class _StateTzButton extends State<TzButton> {
  _onPressedUnableForShortTime() {
    if (!widget.active) {
      return;
    }
    setState(() {
      widget.active = false;
    });
    Future.delayed(const Duration(milliseconds: 600)).then((value) {
      if (mounted) {
        setState(() {
          widget.active = true;
        });
      }
    });
  }

  /// adaptive text color
  Color get _textColor {
    if (widget.textColor != null) {
      return widget.textColor!;
    }
    switch (widget.color) {
      case AppColors.green:
        return widget.textColor ?? AppColors.white;
      case AppColors.red:
        return widget.textColor ?? AppColors.white;
      case AppColors.blue:
        return widget.textColor ?? AppColors.white;
      case AppColors.secondaryColor:
        return widget.textColor ?? AppColors.white;
    }
    return AppColors.blackNeutral;
  }

  Color get _buttonShadow {
    switch (widget.color) {
      case AppColors.primaryColor:
        return AppColors.primaryShadow;
      case AppColors.red:
        return AppColors.dangerShadow;
      case AppColors.secondaryColor:
        return AppColors.secondaryShadow;
    }
    return widget.active ? AppColors.primaryDarkColor : AppColors.gray;
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: widget.width ?? screenSize.width,
      height: widget.height,
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () {
            if (widget.active) {
              widget.onPressed();
              _onPressedUnableForShortTime();
            }
          },

          //
          child: Container(
              decoration: BoxDecoration(
                color: widget.active
                    ? (widget.color ?? AppColors.primaryColor)
                    : Colors.grey,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  // box-shadow: 0px 4px 0px 0px #8D9556;
                  BoxShadow(
                    color: _buttonShadow,
                    offset: const Offset(0, 4.8),
                    blurRadius: 1,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.icon != null ? const SizedBox(width: 16) : Container(),
                  Expanded(
                    child: Center(
                      child: widget.widgetLabel ??
                          TzText(
                            widget.text,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.customTextStylePoppins(
                              fontSize: widget.sizeText ?? 14,
                              color: _textColor,
                              fontWeight: widget.fontWeight ?? FontWeight.w700,
                            ),
                          ),
                    ),
                  ),
                  widget.icon != null
                      ? const SizedBox(
                          width: 16,
                        )
                      : Container(),
                  widget.icon ?? Container(),
                ],
              )),
        ),
      ),
    );
  }
}

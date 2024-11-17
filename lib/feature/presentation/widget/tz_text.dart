import 'package:flutter/widgets.dart';
import 'package:parkingclic/shared/constant/text_styles.dart';

class TzText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int maxLines;
  final TextOverflow overflow;
  final TextAlign? textAlign;
  final bool? softWrap;

  const TzText(
    this.text, {
    super.key,
    this.style,
    this.maxLines = 100, //
    this.overflow = TextOverflow.ellipsis,
    this.textAlign = TextAlign.start,
    this.softWrap = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? AppTextStyles.body,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
      softWrap: softWrap,
      textScaler: const TextScaler.linear(1.0),
    );
  }
}

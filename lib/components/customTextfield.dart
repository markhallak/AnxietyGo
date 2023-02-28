import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final double height;
  final double? width;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Color? color;
  final TextStyle? textStyle;
  final Color? borderColor;
  final double? borderRadius;
  final Icon? suffixIcon;
  final String hintText;
  final Icon? prefixIcon;
  const CustomTextfield(
      {Key? key,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.textStyle,
      required this.height,
      this.width,
      this.keyboardType,
      this.color,
      this.borderRadius,
      this.borderColor,
      this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: TextField(
        style: textStyle ?? const TextStyle(),
        decoration: InputDecoration(
          hintStyle: textStyle ?? const TextStyle(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5,
                color: borderColor ?? Colors.black.withOpacity(0.3),
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5,
                color: borderColor ?? Colors.black.withOpacity(0.3),
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 0),
            ),
            fillColor: color,
            filled: color != null,
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon),
        keyboardType: keyboardType ?? TextInputType.text,
        obscureText: obscureText ?? false,
      ),
    );
  }
}

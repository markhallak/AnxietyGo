import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final Color? borderColor;
  final Color? shadowColor;
  final double? borderRadius;
  final Function()? function;
  final String? text;
  final double? elevation;
  final double? borderWidth;
  final EdgeInsets? padding;
  const CustomButton({
    Key? key,
    this.padding,
    this.shadowColor,
    this.textStyle,
    this.elevation,
    this.text,
    this.function,
    this.height,
    this.width,
    this.backgroundColor,
    this.borderWidth,
    this.borderRadius,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 55,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: function ?? () {},
        style: ElevatedButton.styleFrom(
          padding: padding ?? const EdgeInsets.all(15),
          elevation: elevation ?? 0,
          backgroundColor: backgroundColor ?? ThemeData.light().primaryColor,
          shadowColor: shadowColor ?? Colors.transparent,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: borderColor ?? Colors.black, width: borderWidth ?? 1),
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
          ),
        ),
        child: Text(
          text ?? '',
          style: textStyle ?? const TextStyle(),
        ),
      ),
    );
  }
}

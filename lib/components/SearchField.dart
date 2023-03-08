import 'package:flutter/material.dart';
import 'package:searchfield/src/searchfield.dart' as sf;

class SearchField extends StatelessWidget {
  final double? height;
  final double? width;
  final TextInputType? keyboardType;
  final Color? color;
  final TextStyle? textStyle;
  final Color? borderColor;
  final double? borderRadius;
  final String? hintText;
  final List<String>? suggestions;
  final TextEditingController? controller;

  const SearchField({
    Key? key,
    this.controller,
    this.hintText,
    this.textStyle,
    this.height,
    this.width,
    this.keyboardType,
    this.color,
    this.suggestions,
    this.borderRadius,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 70,
      width: width ?? double.infinity,
      child: sf.SearchField<String>(
        controller: controller,
        suggestions: suggestions != null
            ? suggestions!
                .map(
                  (e) => sf.SearchFieldListItem<String>(
                    e,
                    item: e,
                    child: Text(
                      e,
                      style: textStyle ?? const TextStyle(),
                    ),
                  ),
                )
                .toList()
            : [],
        inputType: keyboardType,
        searchStyle: textStyle ?? const TextStyle(),
        suggestionStyle: textStyle ?? const TextStyle(),
        searchInputDecoration: InputDecoration(
          filled: color != null,
          fillColor: color,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            borderSide:
                BorderSide(color: borderColor ?? Colors.black, width: 2),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            borderSide:
                BorderSide(color: borderColor ?? Colors.black, width: 2),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            borderSide:
                BorderSide(color: borderColor ?? Colors.black, width: 2),
          ),
        ),
        hint: hintText,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart' as esb;

class EasySearchBar extends StatefulWidget {
  final double? height;
  final double? width;
  final String? title;
  final List<String>? suggestions;
  final int? animationDurationInMilliSec;
  final Color? searchCursorColor;
  final Color? barColor;
  final Color? searchBarColor;
  final Future<List<String>> Function(String keyword)? asyncSuggestions;
  final double? elevation;
  final double? iconSize;
  final TextStyle? searchTextStyle;
  final TextStyle? titleTextStyle;
  final TextStyle? suggestionTextStyle;
  final TextStyle? searchHintTextStyle;
  final String? searchHint;
  final Color? iconColor;
  final Function(String val)? searchFunction;
  const EasySearchBar(
      {Key? key,
      this.barColor,
      this.searchHint,
      this.iconColor,
      this.searchFunction,
      this.iconSize,
      this.searchBarColor,
      this.elevation,
      this.animationDurationInMilliSec,
      this.searchCursorColor,
      this.title,
      this.titleTextStyle,
      this.searchHintTextStyle,
      this.suggestionTextStyle,
      this.searchTextStyle,
      this.width,
      this.height,
      this.suggestions,
      this.asyncSuggestions})
      : super(key: key);

  @override
  State<EasySearchBar> createState() => _EasySearchBarState();
}

class _EasySearchBarState extends State<EasySearchBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 65,
      width: widget.width ?? double.infinity,
      child: esb.EasySearchBar(
        suggestionTextStyle: widget.suggestionTextStyle ?? const TextStyle(),
        searchTextStyle: widget.searchTextStyle ?? const TextStyle(),
        searchCursorColor: widget.searchCursorColor,
        titleTextStyle: widget.titleTextStyle,
        searchHintText: widget.searchHint ?? 'Search',
        searchHintStyle: widget.searchHintTextStyle,
        iconTheme:
            IconThemeData(size: widget.iconSize, color: widget.iconColor),
        searchBackIconTheme:
            IconThemeData(size: widget.iconSize, color: widget.iconColor),
        backgroundColor: widget.barColor,
        searchBackgroundColor: widget.searchBarColor,
        title: Text(widget.title ?? ''),
        onSearch: widget.searchFunction ?? (val) {},
        animationDuration:
            Duration(milliseconds: widget.animationDurationInMilliSec ?? 450),
        suggestions: widget.suggestions ?? [],
        asyncSuggestions: widget.asyncSuggestions,
        onSuggestionTap: widget.searchFunction ?? (val) {},
        elevation: widget.elevation,
      ),
    );
  }
}

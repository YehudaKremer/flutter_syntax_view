import 'package:flutter/material.dart';

class SyntaxTheme {
  SyntaxTheme({
    this.baseStyle,
    this.numberStyle,
    this.commentStyle,
    this.keywordStyle,
    this.stringStyle,
    this.punctuationStyle,
    this.classStyle,
    this.constantStyle,
    this.linesCountColor,
    this.backgroundColor,
    this.zoomIconColor,
  });

  TextStyle? baseStyle;
  TextStyle? numberStyle;
  TextStyle? commentStyle;
  TextStyle? keywordStyle;
  TextStyle? stringStyle;
  TextStyle? punctuationStyle;
  TextStyle? classStyle;
  TextStyle? constantStyle;
  Color? linesCountColor;
  Color? backgroundColor;
  Color? zoomIconColor;

  static SyntaxTheme vscodeDark() {
    return SyntaxTheme(
        linesCountColor: const Color(0xFFFFFFFF).withOpacity(.7),
        backgroundColor: const Color(0xFF1E1E1E),
        baseStyle: const TextStyle(color: const Color(0xFFD4D4D4)),
        numberStyle: const TextStyle(color: const Color(0xFFB5CEA8)),
        commentStyle: const TextStyle(color: const Color(0xFF6A9955)),
        keywordStyle: const TextStyle(color: const Color(0xFF569CD6)),
        stringStyle: const TextStyle(color: const Color(0xFFCE9178)),
        punctuationStyle: const TextStyle(color: const Color(0xFFD4D4D4)),
        classStyle: const TextStyle(color: const Color(0xFF4EC9B0)),
        constantStyle: const TextStyle(color: const Color(0xFF4FC1FF)),
        zoomIconColor: const Color(0xFFF8F6EB));
  }

  static SyntaxTheme vscodeLight() {
    return SyntaxTheme(
        linesCountColor: const Color(0xFF000000).withOpacity(.7),
        backgroundColor: const Color(0xFFFFFFFF),
        baseStyle: const TextStyle(color: const Color(0xFF000000)),
        numberStyle: const TextStyle(color: const Color(0xFF098658)),
        commentStyle: const TextStyle(color: const Color(0xFF008000)),
        keywordStyle: const TextStyle(color: const Color(0xFF0000FF)),
        stringStyle: const TextStyle(color: const Color(0xFFA31515)),
        punctuationStyle: const TextStyle(color: const Color(0xFF000000)),
        classStyle: const TextStyle(color: const Color(0xFF267f99)),
        constantStyle: const TextStyle(color: const Color(0xFF0070C1)),
        zoomIconColor: const Color(0xFF0D1429));
  }
}

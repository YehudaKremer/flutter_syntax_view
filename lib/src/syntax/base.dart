import 'package:flutter/material.dart';
import 'index.dart';

abstract class SyntaxBase {
  SyntaxTheme? get syntaxTheme;
  TextSpan format(String src);
}

/// Tokens
enum HighlightType {
  number,
  comment,
  keyword,
  string,
  punctuation,
  klass, // or struct
  constant
}

class HighlightSpan {
  HighlightSpan(this.type, this.start, this.end);
  final HighlightType type;
  final int start;
  final int end;

  String textForSpan(String src) {
    return src.substring(start, end);
  }

  TextStyle? textStyle(SyntaxTheme? syntaxTheme) {
    if (type == HighlightType.number)
      return syntaxTheme!.numberStyle;
    else if (type == HighlightType.comment)
      return syntaxTheme!.commentStyle;
    else if (type == HighlightType.keyword)
      return syntaxTheme!.keywordStyle;
    else if (type == HighlightType.string)
      return syntaxTheme!.stringStyle;
    else if (type == HighlightType.punctuation)
      return syntaxTheme!.punctuationStyle;
    else if (type == HighlightType.klass)
      return syntaxTheme!.classStyle;
    else if (type == HighlightType.constant)
      return syntaxTheme!.constantStyle;
    else
      return syntaxTheme!.baseStyle;
  }
}

SyntaxBase getSyntax(SyntaxTheme? theme) {
  return DartSyntaxHighlighter(theme);
}

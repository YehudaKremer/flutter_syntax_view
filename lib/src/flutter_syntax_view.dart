import 'package:flutter/material.dart';

import 'syntax/index.dart';

class SyntaxView extends StatefulWidget {
  SyntaxView({
    required this.code,
    required this.syntax,
    this.syntaxTheme,
    this.fontSize = 14.0,
  });

  /// Code text
  final String code;

  /// Syntax/Langauge (Dart, C, C++...)
  final Syntax syntax;

  /// Theme of syntax view example SyntaxTheme.dracula() (default: SyntaxTheme.dracula())
  final SyntaxTheme? syntaxTheme;

  /// Font Size with a default value of 12.0
  final double fontSize;

  @override
  State<StatefulWidget> createState() => SyntaxViewState();
}

class SyntaxViewState extends State<SyntaxView> {
  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      TextSpan(
        style: TextStyle(fontFamily: 'monospace', fontSize: widget.fontSize),
        children: <TextSpan>[
          getSyntax(widget.syntax, widget.syntaxTheme).format(widget.code)
        ],
      ),
    );
  }
}

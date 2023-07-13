import 'package:flutter/material.dart';

sealed class SnackBars {
  static showMsg(
      {required BuildContext context, Color? color, required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: Theme.of(context).snackBarTheme.contentTextStyle,),
        behavior: SnackBarBehavior.floating,
        backgroundColor: color,
      ),
    );
  }
}

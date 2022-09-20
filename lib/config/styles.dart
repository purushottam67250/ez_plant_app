import 'package:flutter/material.dart';

extension StyleContextExtension on BuildContext {
  InputBorder textFieldBorderStyle({bool focused = false}) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(
          10,
        ),
      ),
      borderSide: BorderSide(
        color: focused ? Theme.of(this).primaryColor : Theme.of(this).cardColor,
        width: focused ? 1 : 0.25,
      ),
    );
  }
}

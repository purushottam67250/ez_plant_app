import 'package:ez_plant_app/config/styles.dart';
import 'package:flutter/material.dart';

class StyledTextInput extends StatelessWidget {
  final String hint;
  final Widget? prefixIcon;
  final bool obscureText;
  final EdgeInsetsGeometry? margin;
  const StyledTextInput({
    Key? key,
    required this.hint,
    this.prefixIcon,
    this.obscureText = false,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ??
          const EdgeInsets.symmetric(
            horizontal: 20,
          ),
      child: TextFormField(
        obscureText: obscureText,
        style: Theme.of(context).textTheme.bodyText1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.bodyText2,
          prefixIcon: prefixIcon,
          filled: true,
          prefixIconColor: Theme.of(context).primaryColor,
          fillColor: Theme.of(context).cardColor,
          border: context.textFieldBorderStyle(),
          disabledBorder: context.textFieldBorderStyle(),
          enabledBorder: context.textFieldBorderStyle(),
          focusedBorder: context.textFieldBorderStyle(focused: true),
        ),
      ),
    );
  }
}

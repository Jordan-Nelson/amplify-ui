import 'package:flutter/material.dart';

class WorkFlowFormField extends StatelessWidget {
  const WorkFlowFormField({
    Key? key,
    required this.labelText,
    required this.initialValue,
    this.obscureText = false,
    this.onChanged,
    this.enabled,
  }) : super(key: key);

  final String labelText;
  final String initialValue;
  final bool obscureText;
  final void Function(String)? onChanged;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;
    final borderColor = isLightTheme ? Colors.black26 : Colors.white24;
    final labelColor = isLightTheme ? Colors.black45 : Colors.white70;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: TextFormField(
        enabled: enabled,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: labelColor,
          ),
          border: InputBorder.none,
        ),
        initialValue: initialValue,
        onChanged: onChanged,
      ),
    );
  }
}

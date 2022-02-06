import 'package:flutter/material.dart';

class BubbleRadioButton<T> extends StatelessWidget {
  final String value;
  final String groupValue;
  final String leading;
  final Color activeColor;
  final Color inactiveColor;
  final Color activeBorderColor;
  final Color inactiveBorderColor;
  final Color activeTextColor;
  final Color inactiveTextColor;
  final Widget? title;
  final double fontSize;
  final FontWeight? fontWeight;
  final ValueChanged<Object> onChanged;

  const BubbleRadioButton({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.leading,
    required this.activeColor,
    required this.inactiveColor,
    required this.activeBorderColor,
    required this.inactiveBorderColor,
    required this.activeTextColor,
    required this.inactiveTextColor,
    required this.fontSize,
    this.fontWeight,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            _customRadioButton,
            SizedBox(width: 12),
            if (title != null) title,
          ],
        ),
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
        color: isSelected ? activeColor : inactiveColor,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: isSelected ? activeBorderColor : inactiveBorderColor,
          width: 2,
        ),
      ),
      child: Text(
        leading,
        style: TextStyle(
          color: isSelected ? activeTextColor : inactiveTextColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
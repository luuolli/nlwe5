import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class AnswaerWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelected;

  AnswaerWidget({
    required this.title,
    this.isRight: false,
    this.isSelected: false,
  });

  Color get _selectedColorRight =>
      isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isSelected ? _selectedColorCardRight : AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(
            color: isSelected ? _selectedBorderCardRight : AppColors.border,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: isSelected ? _selectedTextStyleRight : AppTextStyles.body,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24),
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: isSelected ? _selectedColorRight : AppColors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.fromBorderSide(
                BorderSide(
                  color: isSelected ? _selectedBorderRight : AppColors.border,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: isSelected
                      ? _selectedColorRight.withOpacity(0.4)
                      : Colors.transparent,
                  offset: Offset(1, 2),
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ],
            ),
            child: isSelected
                ? Icon(
                    _selectedIconRight,
                    color: Colors.white,
                    size: 16,
                  )
                : null,
          )
        ],
      ),
    );
  }
}

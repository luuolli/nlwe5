import 'package:DevQuiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;

  LevelButtonWidget({Key? key, required this.label})
      : assert(['Fácil', 'Médio', 'Difícil', 'Perito'].contains(label)),
        super(key: key);

  final configColorButton = {
    'Fácil': {
      'color': AppColors.levelButtonFacil,
      'borderColor': AppColors.levelButtonBorderFacil,
      'fontColor': AppColors.levelButtonTextFacil,
    },
    'Médio': {
      'color': AppColors.levelButtonMedio,
      'borderColor': AppColors.levelButtonBorderMedio,
      'fontColor': AppColors.levelButtonTextMedio,
    },
    'Difícil': {
      'color': AppColors.levelButtonDificil,
      'borderColor': AppColors.levelButtonBorderDificil,
      'fontColor': AppColors.levelButtonTextDificil,
    },
    'Perito': {
      'color': AppColors.levelButtonPerito,
      'borderColor': AppColors.levelButtonBorderPerito,
      'fontColor': AppColors.levelButtonTextPerito,
    },
  };

  Color get color => configColorButton[label]!['color']!;
  Color get borderColor => configColorButton[label]!['borderColor']!;
  Color get fontColor => configColorButton[label]!['fontColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 24),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: GoogleFonts.notoSans(color: fontColor),
      ),
    );
  }
}

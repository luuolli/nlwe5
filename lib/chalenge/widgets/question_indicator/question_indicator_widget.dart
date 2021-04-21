import '../../../core/app_text_styles.dart';
import '../../../shared/widgets/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          DefaultTextStyle(
            style: AppTextStyles.body,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Questão 04'),
                Text('de 10'),
              ],
            ),
          ),
          SizedBox(height: 16),
          ProgressIndicatorWidget(0.4),
        ],
      ),
    );
  }
}

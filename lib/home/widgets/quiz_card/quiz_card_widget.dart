import '../../../core/core.dart' show AppColors, AppTextStyles;
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String image;
  final int completed;
  final int total;

  QuizCardWidget({
    Key? key,
    required this.title,
    required this.image,
    this.completed: 0,
    this.total: 0,
  }) : super(key: key);

  double get _percentage => (completed / total);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.fromBorderSide(BorderSide(
          color: AppColors.border,
        )),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            child: Image.asset(image),
          ),
          SizedBox(height: 24),
          Text(
            title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  '$completed de $total',
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 3,
                child: LinearProgressIndicator(
                  value: _percentage,
                  backgroundColor: AppColors.chartSecondary,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

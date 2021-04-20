import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends PreferredSize {
  AppbarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            child: Stack(
              children: [
                Container(
                  height: 165,
                  padding: EdgeInsets.symmetric(horizontal: 20).copyWith(
                    bottom: 24,
                  ),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: AppGradients.linear,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Olá, ',
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                              text: 'Lucas Oliveira',
                              style: AppTextStyles.titleBold,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          border: Border.fromBorderSide(
                            ContinuousRectangleBorder(
                              side:
                                  BorderSide(color: AppColors.purple, width: 3),
                            ).side,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              AppImages.profileImage,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Align(alignment: Alignment(0, 1), child: ScoreCardWidget())
              ],
            ),
          ),
        );
}

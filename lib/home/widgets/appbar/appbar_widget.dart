import '../../../core/core.dart'
    show AppColors, AppGradients, AppImages, AppTextStyles;
import '../score_card/score_card_widget.dart';
import '../../../shared/models/user_model.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends PreferredSize {
  final UserModel? user;

  AppbarWidget({this.user})
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            child: Stack(
              children: [
                Container(
                  height: 200,
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
                              text: user?.name ?? 'Nome do usuário',
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
                              user?.photoUrl ?? AppImages.profileImage,
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

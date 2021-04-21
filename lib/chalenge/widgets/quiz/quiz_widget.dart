import '../answer/answer_widget.dart';
import '../../../core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  QuizWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 24),
          Text(title, style: AppTextStyles.heading),
          SizedBox(height: 24),
          Column(
            children: [
              AnswaerWidget(
                title: 'Kit de desenvolvimento deinterface de usuário',
                isSelected: true,
                isRight: true,
              ),
              AnswaerWidget(
                title:
                    'Possibilita a criação de aplicativos compilados nativamente',
                isSelected: false,
                isRight: true,
              ),
              AnswaerWidget(
                title: 'Acho que é uma marca de café do Himalaia',
                isSelected: false,
                isRight: true,
              ),
              AnswaerWidget(
                title:
                    'Possibilita a criação de desktops que são muito incríveis',
                isSelected: false,
                isRight: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:assesment_project/app/app_colors.dart';
import 'package:assesment_project/features/answerreview/data/models/questions_model.dart';
import 'package:flutter/material.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key, required this.questionModel});
  final QuestionModel questionModel;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(questionModel.options.length, (index) {
          String prefix = String.fromCharCode(65 + index);
          bool isCorrect = index == questionModel.correctOptionIndex;
          bool isWrongSelected = index == questionModel.selectedOptionIndex && questionModel.selectedOptionIndex != questionModel.correctOptionIndex;
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: isWrongSelected?AppColors.wrongAnswerBackgroundColor:isCorrect?AppColors.rightAnswerBackgroundColor:Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 26,
                  width: 26,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    border: isCorrect || isWrongSelected ?null:Border.all(color: Color(0xFFCBD5E1)),
                    color:isWrongSelected? Color(0xFFFE3155):isCorrect?Color(0xFF0A5C36):Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      prefix,
                      style: TextStyle(
                        color:isCorrect||isWrongSelected? Colors.white:Color(0xFF4F4F50),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 4),
                Expanded(child: Text(questionModel.options[index], style: TextStyle(fontSize: 15,color:isWrongSelected? Color(0xFFFE3155):isCorrect?Color(0xFF0A5C36):Color(0xFF4F4F50)))),
              ],
            ),
          );
        }),

      ],
    );
  }
}

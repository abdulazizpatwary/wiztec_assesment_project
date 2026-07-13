import 'package:assesment_project/features/answerreview/data/models/questions_model.dart';
import 'package:assesment_project/features/answerreview/view/widgets/option_widget.dart';
import 'package:flutter/material.dart';

class QuestionReviewCardWidget extends StatelessWidget {
  const QuestionReviewCardWidget({
    super.key, required this.questionModel,
  });
  final QuestionModel questionModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(vertical: 8),

      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFEAEEFF),

        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 3,
                child: Text(
                  questionModel.questionText,
                  style: TextStyle(

                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0F172A)
                  ),
                ),
              ),
              Flexible(flex: 1, child: SizedBox()),
            ],
          ),
          SizedBox(height: 8),
          OptionsWidget(questionModel: questionModel,),


          SizedBox(height: 12),
          Row(
            children: [
              _buildOutlineButton(
                label: 'Comment',
                onTap: () {},
              ),
              SizedBox(width: 8),
              _buildOutlineButton(
                label: 'Answer',
                onTap: () {},
              ),
              SizedBox(width: 8),
              _buildOutlineButton(
                label: 'Explanation',
                onTap: () {},
              ),
              SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFFDF0FB),
                  border: Border.all(
                    color:  Color(0xFFEE2B2E),
                  ),

                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Icon(
                  Icons.favorite,

                  color:  Color(0xFFEE2B2E),
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildOutlineButton({
    required String label,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,

        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFF0A5C36)),
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: Center(
            child: FittedBox(
              child: Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF0A5C36),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

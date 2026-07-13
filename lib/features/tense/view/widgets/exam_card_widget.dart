import 'package:assesment_project/app/app_colors.dart';
import 'package:assesment_project/features/tense/data/models/exam_model.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ExamCardWidget extends StatelessWidget {
  const ExamCardWidget({super.key, required this.model});

  final ExamModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),

      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.appPrimaryColor,

        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000A38),
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                decoration: BoxDecoration(
                  color: model.isChecked
                      ? AppColors.checkedQuestionBackgroundColor
                      : AppColors.unchecked,

                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      model.isChecked ? Icons.check_circle : Icons.cancel,
                      color: model.isChecked ? Colors.blue : Color(0xFFFF4D4D),
                      size: 11,
                    ),
                    SizedBox(width: 4),
                    Text(
                      model.isChecked ? 'Checked' : 'Unchecked',
                      style: TextStyle(
                        color: model.isChecked
                            ? Color(0xFF0C238C)
                            : Color(0xFFFF4D4D),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total marks: ${model.totalMarks}',
                style: TextStyle(color: Color(0xFF93979F), fontSize: 10),
              ),
              Text(
                'Duration: ${model.durationMin}',
                style: TextStyle(color: Color(0xFF93979F), fontSize: 10),
              ),
            ],
          ),
          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Question – ${model.totalQuestions}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                  fontSize: 10,
                ),
              ),
              Text(
                'Negetive Marks – ${model.negativeMarks}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                  fontSize: 10,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),

          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Color(0xFF333A4A),
                fontSize: 10,
                height: 1.4,
              ),
              children: [
                TextSpan(
                  text: 'Topic : ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF333A4A),
                  ),
                ),
                TextSpan(text: model.topicTitle),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ReadMoreText(
                  model.topicDescription,
                  trimMode: TrimMode.Line,
                  trimLines: 1,
                  trimCollapsedText: ' Show More',
                  trimExpandedText: ' Show Less',
                  style: const TextStyle(
                    color: Color(0xFF333A4A),
                    fontSize: 10,
                  ),
                  moreStyle: const TextStyle(
                    color: Color(0xFF333A4A),
                    fontWeight: FontWeight.w400,
                  ),
                  lessStyle: const TextStyle(
                    color: Color(0xFF333A4A),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(width: 28),
            ],
          ),
          const SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(color: Colors.grey.shade400),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'View Questions',
                    style: TextStyle(fontSize: 10, color: Color(0xFF000A38)),
                  ),
                ),
              ),
              const SizedBox(width: 14),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.startexamcolor,

                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    model.buttonText,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

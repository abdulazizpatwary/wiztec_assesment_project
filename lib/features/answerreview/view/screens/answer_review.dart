import 'package:assesment_project/app/app_colors.dart';
import 'package:assesment_project/features/answerreview/bloc/answer_review_bloc.dart';
import 'package:assesment_project/features/answerreview/bloc/answer_review_event.dart';
import 'package:assesment_project/features/answerreview/bloc/answer_review_state.dart';
import 'package:assesment_project/features/answerreview/data/models/questions_model.dart';
import 'package:assesment_project/features/answerreview/view/widgets/question_review_card.dart';
import 'package:assesment_project/features/common/widgets/wiztec_task_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnswerReview extends StatefulWidget {
  const AnswerReview({super.key});

  @override
  State<AnswerReview> createState() => _AnswerReviewState();
}

class _AnswerReviewState extends State<AnswerReview> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AnswerReviewBloc>().add(AnswerReviewInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF0F3FF), Color(0xFFF9FAFF)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WizTecTaskAppBar(
                    title: 'Answer Review',
                    onTapBack: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 16),
                  _buildHeadingWidget(),
                  SizedBox(height: 10),
                  BlocBuilder<AnswerReviewBloc, AnswerReviewState>(
                    builder: _buildQuestionReviewCardList,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionReviewCardList(BuildContext context, state) {
    if (state is AnswerReviewLoadedSuccess) {
      return ListView.builder(
        shrinkWrap: true,
        physics:  NeverScrollableScrollPhysics(),
        itemCount: state.questionsModels.length,
        itemBuilder: (context, index) {
          QuestionModel questionModel = state.questionsModels[index];
          return QuestionReviewCardWidget(questionModel: questionModel);
        },
      );
    }
    return SizedBox.shrink();
  }

  Widget _buildHeadingWidget() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 48,
            width: double.maxFinite,

            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '41st BCS Culture - 2025 (21 Aug)',
                    style: TextStyle(
                      color: AppColors.primaryTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 12),
        IconButton(
          style: IconButton.styleFrom(
            padding: EdgeInsets.all(4),
            backgroundColor: AppColors.startexamcolor,
            foregroundColor: Colors.white,
          ),
          onPressed: () {},
          icon: Icon(Icons.tune, size: 22),
        ),
      ],
    );
  }
}

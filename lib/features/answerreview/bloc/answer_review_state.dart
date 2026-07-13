import 'package:assesment_project/features/answerreview/data/models/questions_model.dart';

abstract class AnswerReviewState {}
class AnswerReviewInitialState extends AnswerReviewState{}
class AnswerReviewLoadedSuccess extends AnswerReviewState{
  final List<QuestionModel>questionsModels;

  AnswerReviewLoadedSuccess({required this.questionsModels});
}
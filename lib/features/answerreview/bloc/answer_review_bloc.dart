import 'dart:async';

import 'package:assesment_project/data/review_questions_data.dart';
import 'package:assesment_project/features/answerreview/bloc/answer_review_event.dart';
import 'package:assesment_project/features/answerreview/bloc/answer_review_state.dart';
import 'package:assesment_project/features/answerreview/data/models/questions_model.dart';
import 'package:bloc/bloc.dart';

class AnswerReviewBloc extends Bloc<AnswerReviewEvent,AnswerReviewState>{
  AnswerReviewBloc():super(AnswerReviewInitialState()){
    on<AnswerReviewInitialEvent>(answerReviewInitialEvent);
  }

  FutureOr<void> answerReviewInitialEvent(AnswerReviewInitialEvent event, Emitter<AnswerReviewState> emit) {
    emit(AnswerReviewLoadedSuccess(questionsModels: ReviewQuestionsData.reviewQuestionsData.map((e)=>QuestionModel.fromMap(e)).toList()));
  }
}
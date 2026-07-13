import 'dart:async';

import 'package:assesment_project/data/exam_data.dart';
import 'package:assesment_project/features/tense/bloc/tense_event.dart';
import 'package:assesment_project/features/tense/bloc/tense_state.dart';
import 'package:assesment_project/features/tense/data/models/exam_model.dart';
import 'package:bloc/bloc.dart';

class TenseBloc extends Bloc<TenseEvent,TenseState>{
  TenseBloc():super(TenseInitial()){
    on<TenseInitialEvent>(tenseInitialEvent);
  }

  FutureOr<void> tenseInitialEvent(TenseInitialEvent event, Emitter<TenseState> emit) {
    emit(TenseExamLoadedSuccessState(examList: ExamData.examListData.map((e)=>ExamModel.fromMap(e)).toList()));
  }
}
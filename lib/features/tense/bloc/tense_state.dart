
import 'package:assesment_project/features/tense/data/models/exam_model.dart';

abstract class TenseState {}
class TenseInitial extends TenseState{}
class TenseExamLoadedSuccessState extends TenseState{
  final List<ExamModel> examList;
  TenseExamLoadedSuccessState({required this.examList});
}
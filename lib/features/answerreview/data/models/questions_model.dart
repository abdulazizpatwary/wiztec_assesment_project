class QuestionModel {
  final int id;
  final String questionText;
  final List<String> options;
  final int correctOptionIndex;
  final int selectedOptionIndex;
  final bool isFavorite;

  QuestionModel({
    required this.id,
    required this.questionText,
    required this.options,
    required this.correctOptionIndex,
    required this.selectedOptionIndex,
    this.isFavorite = false,
  });


  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      id: map['id']?.toInt() ?? 0,
      questionText: map['questionText'] ?? '',
      options: List<String>.from(map['options'] ?? []),
      correctOptionIndex: map['correctOptionIndex']?.toInt() ?? 0,
      selectedOptionIndex: map['selectedOptionIndex']?.toInt() ?? 0,
      isFavorite: map['isFavorite'] ?? false,
    );
  }
}
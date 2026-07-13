class ExamModel {
  final String title;
  final String status;
  final bool isChecked;
  final int totalMarks;
  final int durationMin;
  final int totalQuestions;
  final double negativeMarks;
  final String topicTitle;
  final String topicDescription;
  final String buttonText;

  ExamModel({
    required this.title,
    required this.status,
    required this.isChecked,
    required this.totalMarks,
    required this.durationMin,
    required this.totalQuestions,
    required this.negativeMarks,
    required this.topicTitle,
    required this.topicDescription,
    required this.buttonText,
  });

  // Map থেকে Object-এ রূপান্তর করার জন্য factory constructor
  factory ExamModel.fromMap(Map<String, dynamic> map) {
    return ExamModel(
      title: map['title'] ?? '',
      status: map['status'] ?? '',
      isChecked: map['isChecked'] ?? false,
      totalMarks: map['totalMarks']?.toInt() ?? 0,
      durationMin: map['durationMin']?.toInt() ?? 0,
      totalQuestions: map['totalQuestions']?.toInt() ?? 0,
      negativeMarks: map['negativeMarks']?.toDouble() ?? 0.0,
      topicTitle: map['topicTitle'] ?? '',
      topicDescription: map['topicDescription'] ?? '',
      buttonText: map['buttonText'] ?? '',
    );
  }

  // প্রয়োজনে Object থেকে পুনরায় Map-এ রূপান্তর করার পদ্ধতি
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'status': status,
      'isChecked': isChecked,
      'totalMarks': totalMarks,
      'durationMin': durationMin,
      'totalQuestions': totalQuestions,
      'negativeMarks': negativeMarks,
      'topicTitle': topicTitle,
      'topicDescription': topicDescription,
      'buttonText': buttonText,
    };
  }
}
class InterviewQuestion {
  final int id;
  final String question;
  final String answer;

  InterviewQuestion({
    required this.id,
    required this.question,
    required this.answer,
  });

  factory InterviewQuestion.fromJson(Map<String, dynamic> json) {
    return InterviewQuestion(
      id: json['id'] as int,
      question: json['question'] as String,
      answer: json['answer'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'question': question,
    'answer': answer,
  };
}

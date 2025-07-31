import 'package:json_annotation/json_annotation.dart';
import 'package:online_exam_app/features/exam/domain/entity/answer_entity.dart';
import 'package:online_exam_app/features/exam/domain/entity/exam_entity.dart';
import 'package:online_exam_app/features/exam/domain/entity/question_entity.dart';

part 'questions_by_exams_dto.g.dart';

@JsonSerializable()
class QuestionsByExamsDto {
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "questions")
  final List<Questions>? questions;

  QuestionsByExamsDto ({
    this.message,
    this.questions,
  });

  factory QuestionsByExamsDto.fromJson(Map<String, dynamic> json) {
    return _$QuestionsByExamsDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$QuestionsByExamsDtoToJson(this);
  }
}
@JsonSerializable()
class Questions {
  @JsonKey(name: "answers")
  final List<Answers>? answers;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "_id")
  final String? Id;
  @JsonKey(name: "question")
  final String? question;
  @JsonKey(name: "correct")
  final String? correct;
  @JsonKey(name: "subject")
  final dynamic? subject;
  @JsonKey(name: "exam")
  final Exam? exam;
  @JsonKey(name: "createdAt")
  final String? createdAt;

  Questions ({
    this.answers,
    this.type,
    this.Id,
    this.question,
    this.correct,
    this.subject,
    this.exam,
    this.createdAt,
  });

  factory Questions.fromJson(Map<String, dynamic> json) {
    return _$QuestionsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$QuestionsToJson(this);
  }
  QuestionEntity toEntity()=>QuestionEntity(
    answers: answers?.map((e)=>e.toEntity()).toList(),
    type: type,Id: Id,question: question,
    correct: correct,createdAt: createdAt,exam: exam
  );
}

@JsonSerializable()
class Answers {
  @JsonKey(name: "answer")
  final String? answer;
  @JsonKey(name: "key")
  final String? key;

  Answers ({
    this.answer,
    this.key,
  });

  factory Answers.fromJson(Map<String, dynamic> json) {
    return _$AnswersFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AnswersToJson(this);
  }
  AnswerEntity toEntity()=>AnswerEntity(
    answer: answer,key: key
  );
}

@JsonSerializable()
class Exam {
  @JsonKey(name: "_id")
  final String? Id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "duration")
  final int? duration;
  @JsonKey(name: "subject")
  final String? subject;
  @JsonKey(name: "numberOfQuestions")
  final int? numberOfQuestions;
  @JsonKey(name: "active")
  final bool? active;
  @JsonKey(name: "createdAt")
  final String? createdAt;

  Exam ({
    this.Id,
    this.title,
    this.duration,
    this.subject,
    this.numberOfQuestions,
    this.active,
    this.createdAt,
  });

  factory Exam.fromJson(Map<String, dynamic> json) {
    return _$ExamFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ExamToJson(this);
  }
  ExamEntity toEntity()=>ExamEntity(
    id: Id,title: title,duration: duration,subjectId: subject,numberOfQuestions: numberOfQuestions,
    createdAt: createdAt,active: active
  );
}



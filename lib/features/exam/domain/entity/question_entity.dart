import 'package:online_exam_app/features/exam/data/models/response/questions_by_exams/questions_by_exams_dto.dart';
import 'package:online_exam_app/features/exam/domain/entity/answer_entity.dart';
import 'package:online_exam_app/features/exam/domain/entity/exam_entity.dart';

class QuestionEntity{

   List<AnswerEntity>? answers;
   String? type;
   String? Id;
   String? question;

   String? correct;

   dynamic? subject;

   Exam? exam;

   String? createdAt;

   QuestionEntity ({
    this.answers,
    this.type,
    this.Id,
    this.question,
    this.correct,
    this.subject,
    this.exam,
    this.createdAt,
  });
}

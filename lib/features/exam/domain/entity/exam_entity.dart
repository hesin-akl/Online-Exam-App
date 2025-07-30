//"_id": "6700708d30a3c3c1944a9c60",
//             "title": "CSS Quiz",
//             "duration": 20,
//             "subject": "670038f7728c92b7fdf43501",
//             "numberOfQuestions": 25,
//             "active": true,
//             "createdAt": "2024-10-04T22:47:41.364Z"
class ExamEntity{
  String? id;
  String? title;
  String? subjectId;
  int? duration;
  int? numberOfQuestions;
  bool?  active;
  String? createdAt;

  ExamEntity({this.id, this.title, this.subjectId, this.duration,
    this.numberOfQuestions, this.active, this.createdAt});

}
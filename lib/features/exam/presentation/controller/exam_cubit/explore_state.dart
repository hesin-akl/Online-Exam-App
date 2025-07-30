part of 'explore_cubit.dart';
 class ExploreState extends Equatable {
   final bool isLoadingSubject;
   final List<SubjectEntity>subjects;
   final  String? errorMessageSubjects;
   final bool isLoadingexamOnSubjects;
   final List<ExamEntity>exams;
   final  String? errorMessageExams;
   final bool isLoadingQuestionByexam;
   final List<QuestionEntity>questions;
   final  String? errorMessagequestions;
 const  ExploreState({
      this.isLoadingSubject=false,
     this.subjects=const [],
     this.errorMessageSubjects,
   this.isLoadingexamOnSubjects=false,
   this.exams=const [],
   this.errorMessageExams,
   this.isLoadingQuestionByexam=false,
   this.questions=const [],
   this.errorMessagequestions
 });
   ExploreState copyWith({
   bool? isLoadingSubject,
   List<SubjectEntity>?subjects,
   String? errorMessageSubject,
      bool? isLoadingexamOnSubjects,
      List<ExamEntity>?exams,
       String? errorMessageExams,
      bool? isLoadingQuestionByexam,
      List<QuestionEntity>?questions,
       String? errorMessagequestions
 }){
     return ExploreState(
       isLoadingSubject: isLoadingSubject??this.isLoadingSubject,
       subjects: subjects??this.subjects,
       errorMessageSubjects: errorMessageSubject??this.errorMessageSubjects
    ,isLoadingexamOnSubjects: isLoadingexamOnSubjects??this.isLoadingexamOnSubjects,
       exams: exams??this.exams,
       errorMessageExams: errorMessageExams??this.errorMessageExams,
isLoadingQuestionByexam: isLoadingQuestionByexam??this.isLoadingQuestionByexam,
       questions: questions??this.questions,
       errorMessagequestions: errorMessagequestions??this.errorMessagequestions
     );
}

  @override
  // TODO: implement props
  List<Object?> get props => [
    isLoadingSubject,
    subjects,
    errorMessageSubjects,
    errorMessageExams,
    errorMessageSubjects,isLoadingexamOnSubjects
  ];
 }



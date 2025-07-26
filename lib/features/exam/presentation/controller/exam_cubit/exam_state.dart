part of 'exam_cubit.dart';
 class ExamState extends Equatable {
   final bool isLoadingSubject;
   final List<SubjectEntity>subjects;
   final  String? errorMessageSubjects;
 const  ExamState({
      this.isLoadingSubject=false,
     this.subjects=const [],
     this.errorMessageSubjects
 });
   ExamState copyWith({
   bool? isLoadingSubject,
   List<SubjectEntity>?subjects,
   String? errorMessageSubject,
 }){
     return ExamState(
       isLoadingSubject: isLoadingSubject??this.isLoadingSubject,
       subjects: subjects??this.subjects,
       errorMessageSubjects: errorMessageSubject??this.errorMessageSubjects
     );
}

  @override
  // TODO: implement props
  List<Object?> get props => [
    isLoadingSubject,
    subjects,
    errorMessageSubjects
  ];
 }



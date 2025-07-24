part of 'exam_bloc.dart';

 class ExamState {
   bool isLoadingSubject=false;
   List<Subjects>subjects=[];
   String? errorMessageAllSubject="";
   ExamState({
     this.isLoadingSubject=true,
     this.subjects=const [],
     this.errorMessageAllSubject
 });
   ExamState copyWith({
   bool? isLoadingSubject,
   List<Subjects>?subjects,
   String? errorMessageAllSubject
 }){
     return ExamState(
       isLoadingSubject: isLoadingSubject??this.isLoadingSubject,
       subjects: subjects??this.subjects,
       errorMessageAllSubject:errorMessageAllSubject??this.errorMessageAllSubject,
     );
}
 }



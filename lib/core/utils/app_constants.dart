class AppConstants{
  static  const String baseUrl="https://exam.elevateegy.com/api/v1/";
  static const String loginEndPoint="auth/signin";
  static const String registerEndPoint="auth/signup";
  static const String forgetPasswordEndPoint="auth/forgotPassword";
  //v1/subjects
  static const String verfiyPasswordEndPoint="auth/verifyResetCode";
  static const String resetPasswordEndPoint="auth/resetPassword";
  static const String getAllSubjectsEndPoint="subjects";
  ///exams?subject=
  ///
  static const String examBySubjectsEndPoint="exams?";
  //https://exam.elevateegy.com/api/v1/questions?exam=670070a830a3c3c1944a9c63
  static const String questionsByexamEndPoint="questions?";
  static const String  token="token";
  static String? userToken;
}
//class ApiConstants {
//   static const String baseUrl = "https://exam.elevateegy.com/api/v1/";
//   static const String signupRoute = "auth/signup";
//   static const String loginRoute = "auth/signin";
//   static const String forgetPasswordRoute = "auth/forgotPassword";
//   static const String verifyResetCode = "auth/verifyResetCode";
//   static const String resetPasswordRoute = "auth/resetPassword";
//   static const String subjectRoute = "subjects";
//   static const String profileDataRoute = "auth/profileData";
//   static const String editProfileRoute = "auth/editProfile";
//   static const String changePasswordRoute = "auth/changePassword";
//   static const String examsRoute = "exams";
//   static const String questionRoute = "questions";
// }
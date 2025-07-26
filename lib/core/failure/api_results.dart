sealed class ApiResults<T>{}
class ApiSuccessResults<T> extends ApiResults<T>{
  T data;
  ApiSuccessResults(this.data);
}
class ApiErrorResults<T> extends ApiResults<T>{
 final String errorMessage;
  ApiErrorResults( this.errorMessage);
}
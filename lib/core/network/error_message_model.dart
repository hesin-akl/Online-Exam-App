import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable{
  final String message;
 final int statusCode;

  ErrorMessageModel({required this.message,
    required this.statusCode});
factory ErrorMessageModel.fromJson(Map<String,dynamic>json)=>
    ErrorMessageModel(
    message: json["message"],
    statusCode: json["code"],);
  @override
  // TODO: implement props
  List<Object?> get props =>
      [message,statusCode];
}
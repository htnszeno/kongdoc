import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_response.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class AppResponse<T> extends Equatable {
  /// The boolean indicates the AppResponse is success or failed
  final bool success;

  /// The message of AppResponse description
  final String msg;

  /// The AppResponse data
  final T? data;

  /// StatusCode added by response status code (Not from server)
  final int statusCode;

  /// statusMessage added by http response (Not from server)
  final String statusMessage;

  final int? type;

  const AppResponse._(
      {required this.success,
      required this.msg,
      required this.statusCode,
      required this.statusMessage,
      this.data,
      this.type});

  factory AppResponse(
      {required success,
      required String msg,
      int? statusCode,
      String? statusMessage,
      T? data,
      int? type}) {
    return AppResponse._(
        success: success ?? false,
        msg: msg,
        statusCode: statusCode ?? 200,
        statusMessage: statusMessage ?? "The request has succeeded.",
        data: data,
        type: type);
  }

  @override
  List<Object> get props {
    return [success, msg, data ?? "", type ?? 0];
  }

  factory AppResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$AppResponseFromJson(json, fromJsonT);
  }

  Map<String, dynamic> toJson(
    Object? Function(T? value) toJsonT,
  ) {
    return _$AppResponseToJson(this, toJsonT);
  }

  @override
  bool get stringify => true;
}

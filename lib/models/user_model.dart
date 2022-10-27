import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class User extends Equatable {
  final String? userId;
  final String? userName;
  final String? email;

  const User({required this.userId, this.userName, this.email});

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['user_id'] = this.userId;
  //   data['user_name'] = this.userName;
  //   data['email'] = this.email;
  //   return data;
  // }

  static const empty = User(userId: '');

  bool get isEmpty => this == User.empty;

  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [userId, userName, email];
}

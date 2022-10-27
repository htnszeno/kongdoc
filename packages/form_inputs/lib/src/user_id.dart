import 'package:formz/formz.dart';

enum UserIdValidationError { invalid }

class UserId extends FormzInput<String, UserIdValidationError> {
  const UserId.pure() : super.pure('');

  const UserId.dirty([super.value = '']) : super.dirty();

  static final RegExp _userIdRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  UserIdValidationError? validator(String? value) {
    return _userIdRegExp.hasMatch(value ?? '')
        ? null
        : UserIdValidationError.invalid;
  }
}

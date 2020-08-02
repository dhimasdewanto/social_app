import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/i_failure.dart';

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailures with _$AuthFailures implements IFailure {
  const factory AuthFailures.cancelledByUser() = _CancelledByUser;
  const factory AuthFailures.serverFailure() = _ServerFailure;
  const factory AuthFailures.unauthorized() = _Unauthorized;
  const factory AuthFailures.unexpected() = _Unexpected;
}
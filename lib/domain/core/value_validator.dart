import 'package:dartz/dartz.dart';
import './failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLengthWithSingleLine(
  String input,
  int maxLength,
) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    if (input.length >= 4 && input.length <= maxLength) {
      return right(input);
    } else if (input.length < 4 && input.length <= maxLength) {
      return left(ValueFailure.shortLength(
        failedValue: input,
        min: 4,
      ));
    } else {
      return left(ValueFailure.exceedingLength(
        failedValue: input,
        max: maxLength,
      ));
    }
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, List<String>> validateListNotEmpty(
    List<String> input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: "$input"));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, List<int>> validateIntListNotEmpty(
    List<int> input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: "$input"));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, List<List<int>>> validateIntListofListNotEmpty(
    List<List<int>> input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: "$input"));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateUrlAddress(String input) {
  // Maybe not the most robust way of email validation but it's good enough
  const emailRegex = r"""^(http(s?):)([/|.|\w|\s|-])""";
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invaliAvatarUrl(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  // Maybe not the most robust way of email validation but it's good enough
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else if (input.length < 3) {
    return left(ValueFailure.shortLength(failedValue: input, min: 4));
  } else {
    return left(ValueFailure.invalidUserName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
  bool hasLower = false, hasUpper = false;
  bool hasDigit = false, specialChar = false;
  for (var i = 0; i < input.length; i++) {
    if (double.tryParse(input[i]) == null) {
      if (input[i].toLowerCase() == input[i]) {
        hasLower = true;
      }
      if (input[i].toUpperCase() == input[i]) {
        hasUpper = true;
      }
    } else {
      hasDigit = true;
    }
  }
  if (input.length >= 8) {
    if (!hasLower) {
      return left(ValueFailure.dontContainLower(failedValue: input));
    } else if (!hasUpper) {
      return left(ValueFailure.dontContainUpper(failedValue: input));
    } else if (!hasDigit) {
      return left(ValueFailure.dontContainDigit(failedValue: input));
    } else {
      return right(input);
    }
  } else if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return left(ValueFailure.shortLength(failedValue: input, min: 8));
  }
}

Either<ValueFailure<String>, int> validateInteger(int input) {
  // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
  if (input >= 0) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: "$input"));
  }
}

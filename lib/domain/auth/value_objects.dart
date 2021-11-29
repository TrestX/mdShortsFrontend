import 'package:dartz/dartz.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validator.dart';

class FirstName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FirstName(String input) {
    return FirstName._(
      validateStringNotEmpty(input),
    );
  }

  const FirstName._(this.value);
}

class LastName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LastName(String input) {
    return LastName._(
      validateStringNotEmpty(input),
    );
  }

  const LastName._(this.value);
}

class Specialities extends ValueObject<List<String>> {
  @override
  final Either<ValueFailure<String>, List<String>> value;

  factory Specialities(List<String> input) {
    return Specialities._(validateListNotEmpty(input));
  }

  const Specialities._(this.value);
}

class Categories extends ValueObject<List<String>> {
  @override
  final Either<ValueFailure<String>, List<String>> value;

  factory Categories(List<String> input) {
    return Categories._(validateListNotEmpty(input));
  }

  const Categories._(this.value);
}

class Country extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Country(String input) {
    return Country._(
      validateStringNotEmpty(input),
    );
  }

  const Country._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(
      validateStringNotEmpty(input),
    );
  }

  const PhoneNumber._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class Email extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Email(String input) {
    return Email._(
      validateEmailAddress(input),
    );
  }

  const Email._(this.value);
}

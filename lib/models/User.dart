import 'package:anxiety_go/models/difficulty.dart';

class User {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final Difficulty difficultyLevel;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.difficultyLevel,
  });

  // User to json
  Map<String, Object> toJSON() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'difficultyLevel': difficultyLevel,
    };
  }

  // User from json
  static User fromJSON(Map<String, Object> json) {
    return User(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      difficultyLevel: json['difficultyLevel'] as Difficulty,
    );
  }

  // Create a copy with
  User copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    Difficulty? difficultyLevel,
  }) {
    return User(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      difficultyLevel: difficultyLevel ?? this.difficultyLevel,
    );
  }
}

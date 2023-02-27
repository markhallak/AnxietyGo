import 'package:anxiety_go/models/Difficulty.dart';

class User {
  String firstName;
  String lastName;
  String email;
  String password;
  Difficulty difficultyLevel;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.difficultyLevel,
  });

  Map<String, Object> toJSON() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'difficultyLevel': difficultyLevel,
    };
  }

  static User fromJSON(Map<String, Object> json) {
    return User(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      difficultyLevel: json['difficultyLevel'] as Difficulty,
    );
  }
}

import 'package:anxiety_go/models/difficulty.dart';

class Challenge {
  final String name;
  final String description;
  final Difficulty difficulty;

  /// TODO: category as enum
  final String category;
  final String thumbnailUrl;

  const Challenge(this.name, this.description, this.difficulty, this.category,
      this.thumbnailUrl);
}

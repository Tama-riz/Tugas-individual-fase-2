
class NoteModel {
  final String id;
  final String title;
  final String content;
  final DateTime date;
  final String category;
  final String mood;
  bool isFavorite;

  NoteModel({
    required this.id,
    required this.title,
    required this.content,
    required this.date,
    required this.category,
    required this.mood,
    this.isFavorite = false,
  });

  NoteModel copyWith({
    String? id,
    String? title,
    String? content,
    DateTime? date,
    String? category,
    String? mood,
    bool? isFavorite,
  }) {
    return NoteModel(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      date: date ?? this.date,
      category: category ?? this.category,
      mood: mood ?? this.mood,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

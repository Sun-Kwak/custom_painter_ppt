class Person {
  final String name;
  final String answer;

  Person({
    required this.name,
    required this.answer,
  });

  Person copyWith({
    String? name,
    String? answer,
  }) {
    return Person(name: name ?? this.name, answer: answer ?? this.answer);
  }
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      answer: json['answer'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'answer': answer,
  };

  factory Person.empty() => Person(name: '', answer: '0');
}
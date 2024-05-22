class User {
  final String id;
  final String name;
  final String email;
  final double avg;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.avg,
  });

  User copyWith({
    String? id,
    String? name,
    String? email,
    double? avg,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      avg: avg ?? this.avg,
    );
  }
}

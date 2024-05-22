class User {
  final int id;
  final String name;

  const User(this.id, this.name);

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      map['id'] as int,
      map['name'] as String,
    );
  }
}

void main() {
  print("Hello");
}

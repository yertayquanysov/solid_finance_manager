class Currency {
  final int id;
  final String code;

  Currency({
    required this.id,
    required this.code,
  });

  @override
  String toString() {
    return {
      "id": id,
      "code": code,
    }.toString();
  }
}

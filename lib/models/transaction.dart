import 'currency.dart';

abstract class Transaction {
  Transaction({
    required this.id,
    required this.summa,
    required this.date,
    required this.currency,
    this.description = '',
  });

  final int id;
  final int summa;
  final DateTime date;
  final Currency currency;
  final String description;

  @override
  String toString() {
    return {
      "id": id,
      "summa": summa,
      "currency": currency.toString(),
    }.toString();
  }
}

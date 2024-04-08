import 'package:solid_finance_manager/models/transaction.dart';

class Expense extends Transaction {
  Expense({
    required super.id,
    required super.summa,
    required super.currency,
    required super.date,
  });

  final String type = "expense";
}

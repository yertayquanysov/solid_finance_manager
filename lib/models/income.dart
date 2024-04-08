import 'package:solid_finance_manager/models/transaction.dart';

class Income extends Transaction {
  Income({
    required super.id,
    required super.summa,
    required super.currency,
    required super.date,
  });

  final String type = "income";
}

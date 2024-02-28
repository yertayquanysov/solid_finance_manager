import 'package:solid_finance_manager/models/transaction.dart';

import 'interface/transaction_repo_interface.dart';

class TransactionRepositoryImpl extends TransactionRepository {
  final List<Transaction> _transactions = [];

  @override
  void add(Transaction transaction) {
    _transactions.add(transaction);
  }

  @override
  void delete(int transactionId) {
    _transactions.removeWhere((t) => t.id == transactionId);
  }

  @override
  List<Transaction> getAll() {
    return _transactions;
  }

  @override
  Transaction get(int transactionId) {
    return _transactions.firstWhere((t) => t.id == transactionId);
  }
}

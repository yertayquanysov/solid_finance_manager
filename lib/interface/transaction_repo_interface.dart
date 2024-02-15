import '../models/transaction.dart';

abstract class TransactionRepository {
  void add(Transaction transaction);

  void delete(int transactionId);

  Transaction get(int transactionId);

  List<Transaction> getAll();
}

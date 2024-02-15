import 'package:solid_finance_manager/models/currency.dart';
import 'package:solid_finance_manager/models/transaction.dart';
import 'package:solid_finance_manager/transaction_repository.dart';

void main(List<String> arguments) {
  final transactionRepository = TransactionRepositoryImpl();
  final dollarCurrency = Currency(id: 1, code: "USD");

  transactionRepository.add(
    Income(
      id: 1,
      summa: 1000,
      currency: dollarCurrency,
      date: DateTime.now(),
    ),
  );

  transactionRepository.add(
    Income(
      id: 1,
      summa: 1000,
      currency: dollarCurrency,
      date: DateTime.now(),
    ),
  );

  final allTransactions = transactionRepository.getAll();

  for (var transaction in allTransactions) {
    print(transaction.toString());
  }
}

import 'package:solid_finance_manager/models/currency.dart';
import 'package:solid_finance_manager/models/transaction.dart';
import 'package:solid_finance_manager/services/email_finance_report.dart';
import 'package:solid_finance_manager/services/email_sender.dart';
import 'package:solid_finance_manager/services/finance_report_generator.dart';
import 'package:solid_finance_manager/transaction_repository.dart';

void main(List<String> arguments) {
  final transactionRepository = TransactionRepositoryImpl();
  final usd = Currency(id: 1, code: "USD");

  transactionRepository.add(
    Income(
      id: 1,
      summa: 1000,
      currency: usd,
      date: DateTime.now(),
    ),
  );

  transactionRepository.add(
    Income(
      id: 1,
      summa: 1000,
      currency: usd,
      date: DateTime.now(),
    ),
  );

  final allTransactions = transactionRepository.getAll();

  final reportGenerator = FinanceReportGeneratorImpl(transactionRepository);
  final emailSender = EmailSenderImpl();
  final emailReportSender = EmailFinanceReport(reportGenerator, emailSender);

  emailReportSender.send("yertay.k@gmail.com");

  for (var transaction in allTransactions) {
    print(transaction.toString());
  }
}

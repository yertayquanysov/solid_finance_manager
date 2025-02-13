import 'package:solid_finance_manager/interface/finance_report_generator.dart';
import 'package:solid_finance_manager/interface/transaction_repo_interface.dart';

class FinanceReportGeneratorImpl extends FinanceReportGenerator {
  final TransactionRepository _transactionRepository;

  FinanceReportGeneratorImpl(this._transactionRepository);

  @override
  String generate() {
    final transactions = _transactionRepository.getAll();
    return transactions.toList().toString();
  }
}

import 'package:solid_finance_manager/interface/finance_report.dart';
import 'package:solid_finance_manager/interface/transaction_repo_interface.dart';

class EmailFinanceReport extends FinanceReport {
  EmailFinanceReport(this._transactionRepository);

  final TransactionRepository _transactionRepository;

  @override
  void send() {
    _transactionRepository.getAll();

    // TODO: send to email
  }
}

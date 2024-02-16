import 'package:solid_finance_manager/interface/finance_report.dart';

import '../interface/transaction_repo_interface.dart';

class SmsFinanceReport extends FinanceReport {
  SmsFinanceReport(this._transactionRepository);

  final TransactionRepository _transactionRepository;

  @override
  void send() {
    _transactionRepository.getAll();
  }
}

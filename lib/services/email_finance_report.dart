import 'package:solid_finance_manager/interface/email_sender.dart';
import 'package:solid_finance_manager/interface/finance_report.dart';
import 'package:solid_finance_manager/interface/finance_report_generator.dart';

class EmailFinanceReport extends FinanceReport {
  EmailFinanceReport(
    this._financeReportGenerator,
    this._emailSender,
  );

  final FinanceReportGenerator _financeReportGenerator;
  final EmailSender _emailSender;

  @override
  void send(String email) {
    final generatedFinanceReport = _financeReportGenerator.generate();
    _emailSender.send(email, generatedFinanceReport);

    print("Finance report send done.");
  }
}

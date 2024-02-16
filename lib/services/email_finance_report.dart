import 'package:solid_finance_manager/interface/finance_report.dart';
import 'package:solid_finance_manager/interface/finance_report_generator.dart';

class EmailFinanceReport extends FinanceReport {
  EmailFinanceReport(this._financeReportGenerator);

  final FinanceReportGenerator _financeReportGenerator;

  @override
  void send() {
    final generatedReport = _financeReportGenerator.generate();

    print("To send: $generatedReport");
  }
}

import 'package:intl/intl.dart';

extension XDateFormat on String {
  String formatDate({
    required String outputFormat,
    String inputFormat = 'yyyy-MM-dd',
  }) {
    final dateTime = DateFormat(inputFormat).parse(this);
    final formater = DateFormat(outputFormat);
    return formater.format(dateTime);
  }
}

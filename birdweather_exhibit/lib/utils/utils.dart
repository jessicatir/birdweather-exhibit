import "package:intl/intl.dart";

String convertIso8601ToLocalTime(String iso8601String) {
  final dateTime = DateTime.parse(iso8601String).toLocal();
  final formattedTime = DateFormat.jm().format(dateTime);
  return formattedTime;
}

bool isOlderThan(String iso8601String, int minutes) {
  final dateTime = DateTime.parse(iso8601String).toLocal();
  final now = DateTime.now();
  final differenceInMinutes = now.difference(dateTime).inMinutes;
  return differenceInMinutes > minutes;
}

bool isNewerThan(String iso8601String, int minutes) {
  final dateTime = DateTime.parse(iso8601String).toLocal();
  final now = DateTime.now();
  final differenceInMinutes = now.difference(dateTime).inMinutes;
  return differenceInMinutes < minutes;
}

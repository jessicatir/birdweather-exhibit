import "package:flutter/material.dart";
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

int convertCelsiusToNearestWholeFahrenheit(double tempCelsius) {
  return ((tempCelsius * 9 / 5) + 32).round();
}

/// Returns the color associated with an AQI value
/// US AQI scale: 0-50 Good, 51-100 Moderate, 101-150 Unhealthy for Sensitive Groups,
/// 151-200 Unhealthy, 201-300 Very Unhealthy, 301+ Hazardous
Color getAqiColor(double aqi) {
  final aqiValue = aqi.round();
  if (aqiValue <= 50) {
    return const Color(0xFF00E400); // Good - Green
  } else if (aqiValue <= 100) {
    return const Color(0xFFFFFF00); // Moderate - Yellow
  } else if (aqiValue <= 150) {
    return const Color(0xFFFF7E00); // Poor - Orange
  } else if (aqiValue <= 200) {
    return const Color(0xFFFF0000); // Unhealthy - Red
  } else if (aqiValue <= 300) {
    return const Color(0xFF8F3F97); // Very Unhealthy - Purple
  } else {
    return const Color(0xFF7E0023); // Hazardous - Maroon
  }
}

/// Returns the label for an AQI value
String getAqiLabel(double aqi) {
  final aqiValue = aqi.round();
  if (aqiValue <= 50) {
    return "Good";
  } else if (aqiValue <= 100) {
    return "Moderate";
  } else if (aqiValue <= 150) {
    return "Poor";
  } else if (aqiValue <= 200) {
    return "Unhealthy";
  } else if (aqiValue <= 300) {
    return "Very Unhealthy";
  } else {
    return "Hazardous";
  }
}

import 'package:intl/intl.dart';

class DateUtil {
  static String toDDMMYYY(DateTime dateTime) {
    DateFormat format = DateFormat("dd/MM/yyyy");
    return format.format(dateTime);
  }

  static bool isToday(DateTime dateTime) {
    return DateTime.now().difference(dateTime).inDays <= 1;
  }

  static (int, List<DateTime>) getWeeksAndDate(int year, int month) {
    // Create a DateTime object for the first day of the month
    DateTime firstDayOfMonth = DateTime(year, month, 1);

    // Calculate the last day of the month
    DateTime lastDayOfMonth = DateTime(year, month + 1, 0);

    // Initialize a list to store the first dates of each week
    List<DateTime> firstDatesOfWeeks = [];

    // Initialize a variable to keep track of the current date
    DateTime currentDate = firstDayOfMonth;

    // Loop through the month to find the first date of each week
    while (currentDate.isBefore(lastDayOfMonth)) {
      // Check if the current date is the first day of a week (Sunday)
      if (currentDate.weekday == DateTime.sunday) {
        firstDatesOfWeeks.add(currentDate);
      }
      // Move to the next day
      currentDate = currentDate.add(const Duration(days: 1));
    }

    // Calculate the number of weeks in the month
    int numberOfWeeks = firstDatesOfWeeks.length;

    return (numberOfWeeks, firstDatesOfWeeks);
  }
}

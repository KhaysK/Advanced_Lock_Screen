final List<int> arrPassword = [];
final String BUTTONS = "BUTTONS";
final String OPERATION ="OPERATION"; // для сохранения выбранной арефметической операции
final String MULTIPLY = "MULTIPLY";
final String ADDITION = "ADDITION";
final String DIVISION = "DIVISION";
final String SUBTRACTION = "SUBTRACTION";
final String USER_NUMBER = "USER_NUMBER"; // для сохранения введённого числа пользователя


bool isNumeric(String str) {
  try {
    double.parse(str);
  } on FormatException {
    return false;
  } finally {
    return true;
  }
}

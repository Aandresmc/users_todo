int calculateAge(String birthDate) {
  DateTime currentDate = DateTime.now();
  DateTime _birthDate = DateTime.parse(birthDate);
  int age = currentDate.year - _birthDate.year;

  int monthCurrent = currentDate.month;
  int monthBirthDate = _birthDate.month;
  if (monthBirthDate > monthCurrent) {
    age--;
  } else if (monthCurrent == monthBirthDate) {
    int dayCurrent = currentDate.day;
    int dayBirthDate = _birthDate.day;
    if (dayBirthDate > dayCurrent) {
      age--;
    }
  }
  return age;
}

class Converte {
  DateTime? convertDateTime(String? date) {
    if (date != null) {
      return DateTime.parse(date);
    }
    return null;
  }
}

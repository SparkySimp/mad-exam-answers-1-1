import 'dart:io';

String alphabeticalGrade(int grade) {
  if (95 <= grade && grade <= 100) {
    return "AA";
  } else if (85 <= grade && grade < 95) {
    return "BA";
  } else if (70 <= grade && grade < 85) {
    return "BB";
  } else if (60 <= grade && grade < 70) {
    return "CB";
  } else if (50 <= grade && grade < 60) {
    return "CC";
  } else if (40 <= grade && grade < 50) {
    return "DC";
  } else if (0 <= grade && grade < 40) {
    return "DD";
  }
  throw Exception("not aralık dışında");
}

void main(List<String> arguments) {
  print("not girin:");
  var grade = int.parse(stdin.readLineSync()!);

  print(alphabeticalGrade(grade));
}

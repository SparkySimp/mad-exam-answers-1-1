// import 'package:soru_1/soru_1.dart' as soru_1;
import 'dart:io';

double averageOf(List<int> numbers) {
  var sum = 0.0;
  for(final i in numbers) {
    sum += i;
  }
  return sum / numbers.length;
}

void printBelow(double average, List<int> numbers) {
  print("Ortalamanın ($average) altında kalanlar:");
  for(final i in numbers) {
    if(i < average) {
      print(i);
    }
  }
}

void main(List<String> arguments) {
    var notlar = <int>[10, 70, 20, 90, 30, 40, 50];
    final ortalama = averageOf(notlar);
    printBelow(ortalama, notlar);
}

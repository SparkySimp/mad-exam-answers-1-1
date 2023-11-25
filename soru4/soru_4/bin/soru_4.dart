import 'dart:io';
import 'dart:math';

List<int> generateNBetween(int count, int lowerBound, int upperBound) {
  if (lowerBound >= upperBound) {
    throw Exception("Minimum, maksimumdan daima küçük olmalıdır");
  }

  var numbers = List.filled(count, 0);
  for (var i = 0; i < count; i++) {
    numbers[i] = Random().nextInt(upperBound - lowerBound) + lowerBound;
  }
  return numbers;
}

int findMax(List<int> list) {
  var candidate = list[0];
  for (var i in list) {
    if (i > candidate) {
      candidate = i;
    }
  }

  return candidate;
}

int readIntSyncUnsafe() => int.parse(stdin.readLineSync()!);
void main(List<String> arguments) {
  stdout.write("Alt sınır gir:");
  var lowerBound = readIntSyncUnsafe();
  stdout.write("Üst sınır gir:");
  var upperBound = readIntSyncUnsafe();

  var numbers = generateNBetween(10, lowerBound, upperBound);
  var max = findMax(numbers);

  print("$lowerBound ile $upperBound arası üretilenlerden en büyük sayı: $max");
}

import 'dart:io';

int findMin(List<int> numbers) {
  var candidate = numbers[0];
  for (var i in numbers) {
    if (i < candidate) {
      candidate = i;
    }
  }

  return candidate;
}

void main(List<String> arguments) {
  var nInput = -1;
  var numbers = <int>[];
  do {
    stdout.write("Bir sayı girin(çıkış için -1):");
    nInput = int.parse(stdin.readLineSync()!);

    if (nInput < -1) {
      stderr.writeln("lütfen pozitif bir sayı girin");
      continue;
    } else if (nInput >= 0) {
      numbers.add(nInput);
    } else {
      break;
    }
  } while (nInput != -1);

  print("Girilen ${numbers.length} sayının en küçüğü: ${findMin(numbers)}");
}

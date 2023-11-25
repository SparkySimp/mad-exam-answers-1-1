void main(List<String> arguments) {
  var years = 0;
  final percentDelta = 1.20;
  final initPopulation = 2000.0;
  var currentPopulation = initPopulation;
  final endPopulation = 50000.0;
  while (currentPopulation < endPopulation) {
    currentPopulation *= percentDelta;
    years += 1;
  }
  print("Nüfus $years sonunda $endPopulation olur");
}

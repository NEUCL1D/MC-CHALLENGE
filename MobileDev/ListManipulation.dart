//#Challenge : List manipulation in dart

void main() {
  List<int> numbers = [1, 2, -3, 4, 5, 0];
  theFunction(numbers);
}

void theFunction(List<int> input) {
  int sum = 0;
  var even = input.map((num) => num % 2 == 0 ? num * num : (sum += num) == null ? null : null).where((e) => e != null).toList();

  var result = [even, sum];
  print("Result: $result");
}

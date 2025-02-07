//#Challenge : List manipulation in dart

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  theFunction(numbers);
}

void theFunction(List<int> input) {
  int sum = 0;
	// i used a ternary operator
  var even = input.map((num) => num % 2 == 0 ? num * num : (sum += num) *  0).where((e) => e != 0).toList();
  var result = [even, sum];
  print("Result: $result");
}

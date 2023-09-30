List<int> addTwoNumbers(List<int> l1, List<int> l2) {
  int length = 0;

  List<int> sum = [];

  int i = l1.length - 1;
  int j = l2.length - 1;
  while (i >= 0 || j >= 0 || length > 0) {
    int sumDigit = (i >= 0 ? l1[i] : 0) + (j >= 0 ? l2[j] : 0) + length;
    sum.add(sumDigit % 10);

    length = sumDigit ~/ 10;

    i--;
    j--;
  }

  sum.reversed;

  return sum;
}

void main() {
  print(addTwoNumbers([2, 4, 3], [5, 6, 4]));
}

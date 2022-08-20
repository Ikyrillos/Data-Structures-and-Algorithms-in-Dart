// * Challenge 1: Reverse a List
// * Create a function that prints the contents of a list in reverse order.

  void printReversedList(List<String> list) {
    for (var i = list.length-1; i >= 0; i--) {
      print(list[i]);
    }
  }
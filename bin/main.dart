import 'package:dart_application_1/data_structures/linked_list.dart';

void main(List<String> arguments) {
  // the code here
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);

  print(list.toString());
}

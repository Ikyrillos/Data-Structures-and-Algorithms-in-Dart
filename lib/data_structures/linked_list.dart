class Node<T> {
  // the value of the node
  T value;
  // the next node of the linked list and can be null if iys the tail
  Node<T>? next;

  Node({required this.value, this.next});

  // using recursion to print all elements and if the element's next is null then it's tail and print only value
  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  // check if the linked list is empty
  bool get isEmpty => head == null;

  // push method
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }
  // append method
  void append(E value) {
    //* if the list is empty just push the value 
    if (isEmpty) {
      push(value);
      return;
    }
    // * else if it's not empty make the next reference to the next node
    tail!.next = Node(value: value);
    
    // * make the last node's next equal to null.
    tail = tail!.next;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}

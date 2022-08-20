class Stack<E> {
  // * Default constructor
  Stack() : _storage = <E>[];
  final List<E> _storage;
  // * Named constructor
Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

// * overriding toString method
  @override
  String toString() {
    return '---Top ---\n'
        '${_storage.reversed.join('\n')}\n'
        '---Bottom ---';
  }
  // * push method

  void push(E element) => _storage.add(element);
  // * pop method
  E pop() => _storage.removeLast();
  // * peek method
  E get peek => _storage.last;
  
  //* isEmpty and isNot Empty methods
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => _storage.isNotEmpty;
}

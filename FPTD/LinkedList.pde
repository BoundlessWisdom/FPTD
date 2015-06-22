class LinkedList<T> {
  Node firstNode = null;
  Node lastNode = null;
  
  int length = 0;
  
  void add(T item) {
    if (length == 0) {
      Node<T> node = new Node<T>(this, null, item).setFirst().setLast();
      firstNode = node;
      lastNode = node;
    }
    else {
      lastNode.add(item);
    }
    
    length++;
  }
  
  void delete() {
    length--;
  }
  
  void clear() {
    firstNode = null;
    lastNode = null;
    length = 0;
  }
}


class Node<T> {
  LinkedList<T> list;
  boolean firstNode = false;
  boolean lastNode = false;
  
  T element;
  Node<T> last;
  Node<T> next;
  
  Node(LinkedList<T> l, Node<T> n, T e) {
    this.list = l;
    this.last = n;
    this.element = e;
  }
  
  void add(T item) {
    next = new Node<T>(list, this, item);
    if (lastNode) {
      next.setLast();
      clearLast();
    }
  }
  
  void setNext(Node<T> n) {
    next = n;
  }
  
  Node<T> setFirst() {
    firstNode = true;
    return this;
  }
  
  Node<T> setLast() {
    lastNode = true;
    return this;
  }
  
  void clearLast() {
    lastNode = false;
  }
  
  void delete() {
    if (lastNode && firstNode) {
      list.clear();
    }
    else if (lastNode) {
      last.setLast();
      last.setNext(null);
      list.delete();
    }
    else if (firstNode) {
      next.setFirst();
      next.setLast();
      list.delete();
    }
    else {
      last.setNext(next);
      list.delete();
    }
  }
}

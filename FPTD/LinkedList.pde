class LinkedList<T> {
  Node firstNode = new Node<T>();
  Node lastNode = new Node<T>();
  
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
  
  <T> Node(LinkedList<T> l, Node<T> n, T e) {
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
  
  void setFirst() {
    firstNode = true;
  }
  
  void setLast() {
    lastNode = true;
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
      next.setLast(null);
      list.delete();
    }
    else {
      last.setNext(next);
      list.delete();
    }
  }
}
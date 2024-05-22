abstract interface class CanDisplay {
  void call();
}

class DisplayGraphically implements CanDisplay {
  const DisplayGraphically();
  @override
  void call() {
    print('Display Graphically');
  }
}

class DisplayTextually implements CanDisplay {
  const DisplayTextually();
  
  @override
  void call() {
    print('Display Textually');
  }
}

class NoDisplay implements CanDisplay {
  const NoDisplay();
  
  @override
  void call() {
    print('Display Hidden');
  }
}

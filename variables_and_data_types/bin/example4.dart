void main(List<String> args) {
  String name = 'Samuel Ochieng';
  var address = '';

  name = address;
  print(name);

  /// This is possible, name data type is a string, address is defined using var keyword and set to a string value
  /// this means, at compile time, address data type will be derived at compile type based on the value asssigned to it,
  /// and since it's a string, the assignment is possible
} 
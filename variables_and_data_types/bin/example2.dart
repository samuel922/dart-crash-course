void main(List<String> args) {
  final ages = [1, 2, 3, 4];
  print(ages);

  ages.removeAt(1);
  print(ages);


  /// Wondering if const and final are the same. But no, they are not.
  /// For final, we cannot entirely reassign the variable to a new value,
  /// but the internal content can be mutated;
  /// 
  /// what we can't do is something like
  /// ages = [2,3,4,6] - this will run at compile time but throughs an error at runtime
}
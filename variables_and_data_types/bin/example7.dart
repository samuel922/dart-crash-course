void main(List<String> args) {
  late final value = getValue();
  print('We\'re here');
  print(value);
}

int getValue() {
  print('Let\'s get the value:');
  return 10;
}

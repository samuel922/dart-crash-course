//late String name; // Are initialized when they are first used

import 'package:path/path.dart';

void main(List<String> args) {

  // try {
  //   print(name);
  // } catch (e) {
  //   print(e);
  // }

  // name = 'Foo Bar';
  // print(name);

  // print('Before');
  // late String name = provideName();
  // print('AFter');
  // print(name); //Only called at the point the late variable is used.
  // final person = Person();
  // print(person.age);
  // print(person.description);

  final person = Person();
  print(person.fullName);
  print(person.lastName);

}

String provideName() {
  print('Function is called:');
  return 'Foo Bar';
}

class Person {
  late String fullName = _getFullName();
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  String _getFullName() {
    print('_getFullName() is called');
    return 'Foo Bar';
  }
  // late String description = heavyCalculationOfDescription();
  // final int age;

  // Person({this.age = 18}) {
  //   print('Constructor is called');
  // }

  // String heavyCalculationOfDescription() {
  //   print('FUnction heavyCalculationOfDescription is called');
  //   return 'Foo Bar';
  // }
}
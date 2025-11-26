void main(List<String> args) {
  // int? age = 20;
  // age = null;
  // if(age == null) {
  //   print('Age is null');
  // } else {
  //   print('Age is not null');
  // }

  // String? lastName;

  // lastName ??= 'Bar'; // go ahead and assign Bar to lastname if lastname is null
  // print(lastName); /// Optionals in dart by default are null
//String? nullName;
//print(nullName ?? 'Foo');

// List<String?>? names = [];

// names.add('Foo');
// names.add(null);
// print(names);
// }

// void doSOmething(String? one, String? two) {
//   one ??= two;

// String? lastName;

// void assignLastName() {
//   lastName = 'Bar';
// }

// assignLastName();

// if (lastName?.contains('Bar') ?? false) {
//   print('Last name contains Bar');
// } else {
//   print('Last name does not contain Bar');
// }

// String? getFullNameOptional() {
//   return 'Foo bar';
// }

// String getFullName() {
//   return 'Foo Bar';
// }

// final String fullName = getFullNameOptional() ?? getFullName();
// print(fullName);


// //Extending optional types
// final someName = getFullNameOptional();
// someName.descibe();

//print(getFullName('Samuel', null));
print(fullName('Samuel', 'Ochineg'));

}

String getFullName(
  String? firstName,
  String? lastName
) => withAll([firstName, lastName], (names) => names.join('')) ?? 'Empty';

T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callback
) => 
    optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());

//Extending optional types

extension Describe on Object? {
  void descibe() {
    if (this == null) {
      print('This object is null');
    } else {
      print('$runtimeType: $this');
    }
  }
}

String fullName(String? firstName, String? lastName) {
  return '${firstName.orDefault} ${lastName.orDefault}';
}

// extension FlatMap<T> on T? {
//   R? flatMap<R>()
// }

extension DefaultValues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    } 
    switch(T) {
      case String:
        return '' as T;
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case bool:
        return false as T;
      default:
        throw Exception('No default value for type $T');
    }
  
  }
}
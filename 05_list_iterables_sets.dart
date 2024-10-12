void main () {

  final numbers = [1, 2, 3, 4, 5, 5, 5, 5, 5, 6, 7 , 7 , 7 ,8, 10, 10, 8, 9 ];

  print('List original $numbers');
  print('List original ${numbers.length}');

  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Last: ${numbers.last}');
  print('Reversed: ${numbers.reversed}');

//  reversedNumbers es un iterable: un elemento que se puede iterar, se puede leer de manera secuencial. empieza con ()
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
// recuperar la lista del iterable 
  print('List: ${reversedNumbers.toList()}');
// transoforma el iterable en un set- empieza en {} y elimina los duplicados.
  print('Set: ${reversedNumbers.toSet()}');
// se puede pasar a un ser y luego a una lista
  print('List: ${reversedNumbers.toSet().toList()}');

// where() es una funcion que retorna un iterable y se le pasa un argumento (eelmento) y una funcion {} donde se indica el filtro, si retorna true se almacena en la variable. Creates a new lazy [Iterable] with all elements that satisfy the predicate [test].
  final numbersGreaterThan5 = numbers.where((n) {
    return n > 5; // retorna un true o false, almacena toidos los numeros que cumplan con esa condicion
  });

// Lista
  print('List de n>5 : ${numbersGreaterThan5.toList()}');

  // Set
  print('Set de n>5 : ${numbersGreaterThan5.toSet()}');
  
  
  
}
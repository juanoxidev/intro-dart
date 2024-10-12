void main () { 

 print(greetEveryoneFlecha());
 print('Suma: ${(addTwoNumbers(10, 10))}');
  print('Suma Flecha: ${(addTwoNumbersFlecha(10, 10))}');
}

String greetEveryone() {
  return 'Hola a todos';
}

//funcion flecha: no se puede elaborar un cuerpo. {} luego de la => 
String greetEveryoneFlecha() => 'Hola a todos';

// definicion de tipos en en parametros, si no indicamos tipos seran dynamic.
int addTwoNumbers(int a, int b){
  return a+b;
}
// funcion flecha con parametros;
int addTwoNumbersFlecha(int a, int b) => a+b;

// funcion flecha con parametro opcional, puede estar o no. se cierra el parametro entre [] y al tipo de dato se le agrega un ?. Luego hacemos una validacion en el cuerpo del metodo.;
int addTwoNumbersOpcional(int a,[int? b]) {
  // validacion: consultamos si b tiene un valor b?? si no lo tiene es 0; OPERASCIONES DE VALORES NULOS.
  b??= 0;
  return a+b;
  }

// OTRA FORMA DE OPCIONAL
  // funcion flecha con parametro opcional, puede estar o no. se cierra el parametro entre [] y se define el valor de b por defecto.
int addTwoNumbersOpcional2(int a,[int b = 0]) {
  return a+b;
  }

// SIGNIFICADO DE PARAMETROS POSICIONALES: SE DEBEN MANDAR LOS VALORES EN LA FORMA EN LA CUAL FUERON DECLARADOS EJ A PRIMERO Y LUEGO B. 
  
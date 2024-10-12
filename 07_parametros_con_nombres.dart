void main () { 

// si no le paso el valor message usa el por defecto
print(greetPerson(name: 'JUAN'));
// si le paso el valor message reemplaza el default.
 print(greetPerson(name: 'JUAN', message: 'BIEVENIDO LOCO'));
}




  // DART NOS OFRECE LA POSIBILIDAD DE MANDAR PARAMETROS SEGUN LOS NOMBRES QUE LE ASIGNAMOS, SIN TENER Q MANDARLOS DE FORMA SECUENCIAL. 
  // SE DECLARAN ENTRE {} LOS CONVIERTE EN POSIBLES OPCOINALES Y NOMBRADOS, SE DEBE INDICAR EL ? SI SON OPCIONALES O INDICAR SU VALOR DEFAULT. Y SI SON REQUERIDOS DEBE INDICARSE REQUIRED ANTES DEL TIPO. 

  String greetPerson({required String name, String message = 'Hola,'}) {
    return '$message $name';
  }
void main() {
   
   // definir variables
   String myName = 'Juan';

  // definir constantes en tiempo de ejecucion, si tenemos q calcular el valor de myName2 entronces debemos usar final.
  final myName2='Juan2';

  // asignacion tardia, lo trata como siemopre tuviera un valor. 
  late final myName3;

// constante que se define en tiempo de construccion, si nunca va a cambiar de valor usamos const
  const myName4 = 'Juan';

myName2.toUpperCase();
// si solo queremos tener el valor ponemos la interpolacion de string $variable
   print('Hola $myName2');

// si queremos usar funciones con ese string hay que usar simil template String ${}
   print('Hola ${ myName.toUpperCase()}');

// lo mismo si queremos realizar operaciones 
  print('${1 + 3}');
}
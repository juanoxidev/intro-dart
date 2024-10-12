void main () {

final String pokemon = 'Pikachu';
final int hp = 100;
final bool isAlive = true;
//Listas
final List<String> abilities = ['Trueno'];
final sprites =  <String> ['pikachu/front.png', 'pikachu/back.png'];

// dynamic es un comodin. puede ser cualquier tipo de dato.por defecto es nulo. se dfebn hacer evaluaciones de null safety.

dynamic errorMessage = 'Hola';
errorMessage =  true;
errorMessage =  [1,2,3,4,5];
// set de datos
errorMessage =  {1,2,3,4,5};
// funcion flecha
errorMessage = () => true;
errorMessage = true;


print("""
$pokemon
$hp
$isAlive
$abilities
$sprites
$errorMessage
""");


}
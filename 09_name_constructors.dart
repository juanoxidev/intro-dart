void main () {



// simulamos objeto que recibimos de una peticion http, 
// como convierto este map en un objeto de tipo Hero. 
// Se usa el constructor nombrado donde se pueden hacer validaciones sobre el json.
final Map<String, dynamic> rawJson = {

  'name': 'Tony Stark',
  'power': 'Money',
  'isAlive': true,

};

// uso del constructor nombrado fromJson
final iroman = Hero.fromJson(rawJson);


// uso del constructor comun.
// final iroman = Hero (
//                       isAlive: false, 
//                       power: 'Money', 
//                       name: 'Tony Stark'
//                     );

print(iroman);

}

// Constructor Nombrado: Multiples constructores y dependiendo de sus argumentos, crear una instancia en base a sus argurmentos. crear diferentes instancias dependiendo de sus argumentos.

class Hero {
  String name;
  String power;
  bool isAlive;


   Hero({ 
        required this.name, 
        required this.power,
        required this.isAlive,  
        });

    // constructor nombrado. Tipo.Nombre(Parametro) : atributo = parametro['atributo'] ?? 'Que ponemos si bno esta ese atributo en el json';
    Hero.fromJson(Map <String, dynamic> json)
    // tomo el valor de la clave name si no lo tiene ?? se inserta en name no name found.
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
// Importante: cuandio tenemos algo dle map esos valores textuales hay un margen de error ya que el nombre de las variables puede cambiar por una mayucula, espacio, dart es case sensitive. 
//O tambien puede no tener una propiedad q no venga y hay q controllarlo ya que dart es nullsafety.


// usando operador ternario.
@override
    String toString() {
      return '$name, $power, Estado: ${isAlive? 'Esta vivo': 'Ha Muerto'}';
    }
    
    
  }

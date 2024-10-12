void main () {

  // final Hero deadpool = new Hero('DeadPool', 'Inmortalidad');
    final Hero deadpool = new Hero(name:'Deadpool', power: 'Inmortalidad');
    final Hero wolverine = new Hero(name:'Logan');
  //  el print de la variable por defecto da la instancia
  print(deadpool);

  // nombre
    print(deadpool.name);
  // power
    print(deadpool.power);

    print(wolverine);

}

// tipos de atributos con ? para indicar opcionales. 
class Hero {
  String name;
  String power;

// constructor c/ inicializacion :
  // Hero(String pName, String pPower) 
  //  : this.name = pName,
  //    this.power= pPower;
  
// constructor inicializado
  // Hero(this.name, this.power);

  
// constructor con parametros que no son secuenciales.
   Hero({ 
        required this.name, 
        // required this.power
        // power oopcional
         this.power = 'Sin poder'
        });

// Sobreescribir toString; se obtienen las propeidades con $atributo
@override
String toString() {
  return '$name - $power';
}

}
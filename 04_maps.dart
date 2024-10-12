void main () {

  final Map<String, dynamic> pokemon = {
    'name':'Pikachu',
    'hp':100,
    'isAlive': true,
    // listado de abilidades tipo string.
    'abilities': <String>['Carga Trueno'],
    // dart infiere que sprites es un mapa, pero opdrias definir luego de : Map<int,String>{clave:valor} o <int,String> {clave:valor}.
    'sprites': {
      1:'pikachu/front.png',
      2:'pikachu/back.png'
    }
  };

  print(pokemon);

// como obtener la propiedad name de pokemon.
  print('Name: ${ pokemon['name']}');
// como obtener la propiedad sprites de pokemon que es un map.
  print('Sprites: ${ pokemon['sprites']}');

// como obtener la un sprite del mapa de pokemon
  print('Front: ${ pokemon['sprites'][1]}');
  print('Back: ${ pokemon['sprites'][2]}');
  
}
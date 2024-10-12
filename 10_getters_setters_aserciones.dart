void main() {

final mySquare = Square(side: -5);
  mySquare.side = -4;
print ('area: ${mySquare.area}');

}

class Square {

// las propiedades por defecto con publicas, para ponerlas privadas debo usar el guion bajo _ antes del nombre. ej _side.
  double _side;

// consturctor con parametros privados _side
  Square({required double side})
  : 
    // primero van las aserciones y luego las asignaciones en el constructor.
    // aserciones reglas de negocio. Si una asercion no se cumple no sigue ejecutando las siguientes lineas. 
    //El primer argumento es la validacion que dbe cumplir y el segundo argumento es el mensjae que muestra en caso de no pasar la validacion
  assert( side >= 0, 'Side must be >= 0'),
  _side = side;



// creo el getter de area.
  double get area{
    return _side * _side;
  }

// creo el setter de side
  set side(double value) {
    print('Setting new value $value');
    if( value < 0 ) throw 'Value must be >=0';
    _side = value;
  }

// creo una funcuion que me calcula el area pero no es un atributo.
  double calculateArea() {
    return _side * _side;
  }

}
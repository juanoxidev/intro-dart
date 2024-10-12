void main () {

  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 100);
  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

// respetando principios solid, le paso una energyPLant no importa de q tipo y cargo el telefono. Principio de inversion de dependencias.
double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10 ) throw Exception('Not enough energy');
  return plant.energyLeft - 10;
}

// definicion de enum. { posibles valores }
enum PlantType { nuclear, wind, water}
 
// definicion de clase abstracta. nunca voya  cambaiar el tipo de planta una vez definido.
abstract class EnergyPlant {

  double energyLeft;
  // enumerados como atributo.
  final PlantType type;

  // constructor
  EnergyPlant({ required this.energyLeft,
                required this.type});
  
// declaracion de metodo abstracto no los implemento
  void consumeEnergy(double amount);

// hay otra opcion que es lanzxar una excepcion si alguien llama al metodo y no esta override. 
  // void consumeEnergy(double amount) {
  //   throw UnimplementedError();
  // }

}

class WindPlant extends EnergyPlant {

  WindPlant({required double initialEnergy})
  // al extender de energyplant me obliga a definir el constructor haciendo la llamadas al super apra el energyleft y el type.
  // asigno energyleft el initialEnergy y el enum de type al ser wind ya se lo asigno yo internamente. 
  : super(energyLeft: initialEnergy, type: PlantType.wind);


// al extender de energy plant si el metodo abstracto no esta implementado me obliga a sobreescribirlo.
  @override
  void consumeEnergy(double amount) {
   energyLeft -= amount; 
  }
}


class NuclearPlant implements EnergyPlant {

  double energyLeft;
  // nunca voya  cambaiar el tipo de una planta nuclear
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount*0.5);
  }
}

// implements y extends son ambos usados para herencia, implemenmts solo se compromete a darle implementacion a los metodos abstractos (especifico)  y el extends se trae todo lo que la clase padre tiene (general). 
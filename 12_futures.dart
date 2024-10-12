
// void main(){
//   print('Inicio del programa');
  
//   // simulamos una peticion http
//   httpGet('urlPath')
//                   // es una promesa, entonces agarramos la data y la mostramos en consola.
//                   .then((data) {
//                           print(data);
//                   })
//                   // si falla en hacer la peticion http por algun motivo cacheamos el error y lo mostramos por consola.
//                   .catchError((err){
//                                 print('Error: $err');
//                   }); 

//   print('Fin del programa');
// }

// Future<String> httpGet(String url){
//   // Future.delayed recibe un objeto duration que define cuando se va a ejecutar y un callback que es una funcion () {cuerpo de la funcion};
// return Future.delayed( const Duration(seconds: 1),() {
//   throw 'Error en la peticion http';
//   //return 'Se ejecuta la respuesta de la peticion http 1 seg dsp';
// });
// }




// hago que el main sea asincrono para que ejecute en orden secuencial las funciones asincronas. 
void main() async{
  print('Inicio del programa');
  try{
    final value = await httpGetAsyncAwait('url'); // espera el resultado y una ves q lo tiene sigue con la ejecucion.
    print(value);
  } catch (err) { // cacheamos la excepcion si es q hay, sino se ejecutrara el codigo como se tiene previsto.
    print('$err');
  }
  print('Fin del programa');
}
// las funciones async simepre devulven un objeto Future (promesa);
Future<String> httpGetAsyncAwait(String url) async{
  await Future.delayed(const Duration(seconds: 1)); // espera 1 seg
  throw 'Error en la peticion'; //lanza una excepcion
  //return 'Tenemos un valor de la peticion'; // luego de 1 seg retorna este valor.
}
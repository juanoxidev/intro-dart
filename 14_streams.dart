void main() {
// el stream debe ser escuchado para emitir valores. El stream es un flujo de datos a lo largo dle tiempo.
emitNumber()
          .listen(( int value) {
              print('Stream value: $value');
          });

emitNumberAsync()
                .listen((value) {
                  print('Stream value async: $value');
                });
}

Stream <int> emitNumber() {
return Stream.periodic( const Duration(seconds: 1), (value){
  return value;
}).take(5); // solo toma x emisiones y  luego cierrate.

}

// el async* retorna un Stream, el async retorna un Future;
Stream<int> emitNumberAsync() async*{
  // emisiiones controladas
  final valuesToEmit = [1,2,3,4,5,6];
  for(int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    // yield le pasa le valor
    yield i;
  }

}
import 'package:flutter_river/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final namesStreamProvider = StreamProvider.autoDispose<String>((ref) async* {
  
    await for( final name in RandomGenerator.randomNamesStream() ) {

      yield name;
    }


});



// final namesStreamProvider = StreamProvider<List<String>>((ref) async* {
  
//   await Future.delayed(const Duration(seconds: 2));
  
  
//   yield [];
//   await Future.delayed(const Duration(seconds: 2));

//   yield ['Fernando'];
//   await Future.delayed(const Duration(seconds: 2));
  
//   yield ['Fernando','Melissa'];
//   await Future.delayed(const Duration(seconds: 2));

//   yield ['Fernando','Melissa', 'Juan'];

// });
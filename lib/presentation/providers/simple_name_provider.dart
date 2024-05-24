
import 'package:flutter_river/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Solo lectura
final simpleNameProvider = Provider.autoDispose<String>((ref){

  return RandomGenerator.getRandomName();
});
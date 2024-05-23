import 'package:flutter_river/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final randomNameProvider = StateProvider.autoDispose<String>((ref) {
  // print('randomName Provider');
  return RandomGenerator.getRandomName();
});
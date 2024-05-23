import 'package:flutter/material.dart';
import 'package:flutter_river/presentation/providers/random_names_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StreamScreen extends ConsumerWidget {
  const StreamScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final randomNames$ = ref.watch( namesStreamProvider );

    // if ( !randomNames$.hasValue ) {
    //   return const Scaffold(
    //     body: Center( child: CircularProgressIndicator() ),
    //   );
    // }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
      ),
      body: randomNames$.when(
        data: (data) => Center(
          child: Text( data ),
        ), 
        error: (error, stackTrace) => Text('Error: $error'), 
        loading: () => const Center(child: CircularProgressIndicator())
      ),
    );
  }
}

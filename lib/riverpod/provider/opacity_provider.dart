
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:protflio_website/riverpod/repository/opacity_repository.dart';

import '../repositories_impl/opacity_repository_impl.dart';
import '../usecases/get_initial_opacity.dart';


// Provide the repository implementation
final opacityProviderRepo = Provider<OpacityRepository>((ref) {
  
  return OpacityRepositoryImpl();
});

// Provide the use case

final getInitialOpacityProvider = Provider<GetInitialOpacity>((ref){

  final opacityRepository = ref.watch(opacityProviderRepo);
  return GetInitialOpacity(opacityRepository);
});

//// StateProvider to manage opacity state 

final opcityProvider = StateProvider<double>((ref){
  final getInitalOpacity = ref.watch(getInitialOpacityProvider);
  return getInitalOpacity();
});

